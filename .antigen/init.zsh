#-- START ZCACHE GENERATED FILE
#-- GENERATED: Wed 14 Aug 2019 11:12:31 PM CEST
#-- ANTIGEN develop
_antigen () {
	local -a _1st_arguments
	_1st_arguments=('apply:Load all bundle completions' 'bundle:Install and load the given plugin' 'bundles:Bulk define bundles' 'cleanup:Clean up the clones of repos which are not used by any bundles currently loaded' 'cache-gen:Generate cache' 'init:Load Antigen configuration from file' 'list:List out the currently loaded bundles' 'purge:Remove a cloned bundle from filesystem' 'reset:Clears cache' 'restore:Restore the bundles state as specified in the snapshot' 'revert:Revert the state of all bundles to how they were before the last antigen update' 'selfupdate:Update antigen itself' 'snapshot:Create a snapshot of all the active clones' 'theme:Switch the prompt theme' 'update:Update all bundles' 'use:Load any (supported) zsh pre-packaged framework') 
	_1st_arguments+=('help:Show this message' 'version:Display Antigen version') 
	__bundle () {
		_arguments '--loc[Path to the location <path-to/location>]' '--url[Path to the repository <github-account/repository>]' '--branch[Git branch name]' '--no-local-clone[Do not create a clone]'
	}
	__list () {
		_arguments '--simple[Show only bundle name]' '--short[Show only bundle name and branch]' '--long[Show bundle records]'
	}
	__cleanup () {
		_arguments '--force[Do not ask for confirmation]'
	}
	_arguments '*:: :->command'
	if (( CURRENT == 1 ))
	then
		_describe -t commands "antigen command" _1st_arguments
		return
	fi
	local -a _command_args
	case "$words[1]" in
		(bundle) __bundle ;;
		(use) compadd "$@" "oh-my-zsh" "prezto" ;;
		(cleanup) __cleanup ;;
		(update|purge) compadd $(type -f \-antigen-get-bundles &> /dev/null || antigen &> /dev/null; -antigen-get-bundles --simple 2> /dev/null) ;;
		(theme) compadd $(type -f \-antigen-get-themes &> /dev/null || antigen &> /dev/null; -antigen-get-themes 2> /dev/null) ;;
		(list) __list ;;
	esac
}
antigen () {
  local MATCH MBEGIN MEND
  [[ "$ZSH_EVAL_CONTEXT" =~ "toplevel:*" || "$ZSH_EVAL_CONTEXT" =~ "cmdarg:*" ]] && source "/usr/share/zsh/share/antigen.zsh" && eval antigen $@;
  return 0;
}
typeset -gaU fpath path
fpath+=(/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/lib /home/denis/.antigen/bundles/adrieankhisbe/zsh-quiet-accept-line /home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/pip /home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/command-not-found /home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/nmap /home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/thefuck /home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/systemd /home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/docker /home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/kubectl /home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/docker-compose /home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git /home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/common-aliases /home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/compleat /home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/copyfile /home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/django /home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/fasd /home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/gitfast /home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git-extras /home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/httpie /home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/npm /home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/vscode /home/denis/.antigen/bundles/Tarrasch/zsh-functional /home/denis/.antigen/bundles/zsh-users/zsh-history-substring-search /home/denis/.antigen/bundles/tarruda/zsh-autosuggestions /home/denis/.antigen/bundles/bil-elmoussaoui/flatpak-zsh-completion /home/denis/.antigen/bundles/srijanshetty/zsh-pip-completion /home/denis/.antigen/bundles/lukechilds/zsh-better-npm-completion /home/denis/.antigen/bundles/ninrod/pass-zsh-completion /home/denis/.antigen/bundles/zsh-users/zsh-completions /home/denis/.antigen/bundles/unixorn/git-extra-commands /home/denis/.antigen/bundles/arialdomartini/oh-my-git /home/denis/.antigen/bundles/MikeDacre/careful_rm /home/denis/.antigen/bundles/wfxr/forgit /home/denis/.antigen/bundles/zlsun/solarized-man /home/denis/.antigen/bundles/joel-porquet/zsh-dircolors-solarized /home/denis/.antigen/bundles/MichaelAquilina/zsh-you-should-use /home/denis/.antigen/bundles/djui/alias-tips /home/denis/.antigen/bundles/unixorn/autoupdate-antigen.zshplugin /home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/fzf /home/denis/.antigen/bundles/Vifon/deer /home/denis/.antigen/bundles/leophys/zsh-plugin-fzf-finder /home/denis/.antigen/bundles/ytet5uy4/fzf-widgets /home/denis/.antigen/bundles/wfxr/formarks /home/denis/.antigen/bundles/changyuheng/fz /home/denis/.antigen/bundles/zsh-users/zaw /home/denis/.antigen/bundles/zsh-users/zaw/functions /home/denis/.antigen/bundles/aperezdc/zsh-fzy /home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/dotenv /home/denis/.antigen/bundles/zsh-users/zsh-syntax-highlighting /home/denis/.antigen/bundles/lukechilds/zsh-nvm) path+=(/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/lib /home/denis/.antigen/bundles/adrieankhisbe/zsh-quiet-accept-line /home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/pip /home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/command-not-found /home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/nmap /home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/thefuck /home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/systemd /home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/docker /home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/kubectl /home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/docker-compose /home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git /home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/common-aliases /home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/compleat /home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/copyfile /home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/django /home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/fasd /home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/gitfast /home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git-extras /home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/httpie /home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/npm /home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/vscode /home/denis/.antigen/bundles/Tarrasch/zsh-functional /home/denis/.antigen/bundles/zsh-users/zsh-history-substring-search /home/denis/.antigen/bundles/tarruda/zsh-autosuggestions /home/denis/.antigen/bundles/bil-elmoussaoui/flatpak-zsh-completion /home/denis/.antigen/bundles/srijanshetty/zsh-pip-completion /home/denis/.antigen/bundles/lukechilds/zsh-better-npm-completion /home/denis/.antigen/bundles/ninrod/pass-zsh-completion /home/denis/.antigen/bundles/zsh-users/zsh-completions /home/denis/.antigen/bundles/unixorn/git-extra-commands /home/denis/.antigen/bundles/arialdomartini/oh-my-git /home/denis/.antigen/bundles/MikeDacre/careful_rm /home/denis/.antigen/bundles/wfxr/forgit /home/denis/.antigen/bundles/zlsun/solarized-man /home/denis/.antigen/bundles/joel-porquet/zsh-dircolors-solarized /home/denis/.antigen/bundles/MichaelAquilina/zsh-you-should-use /home/denis/.antigen/bundles/djui/alias-tips /home/denis/.antigen/bundles/unixorn/autoupdate-antigen.zshplugin /home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/fzf /home/denis/.antigen/bundles/Vifon/deer /home/denis/.antigen/bundles/leophys/zsh-plugin-fzf-finder /home/denis/.antigen/bundles/ytet5uy4/fzf-widgets /home/denis/.antigen/bundles/wfxr/formarks /home/denis/.antigen/bundles/changyuheng/fz /home/denis/.antigen/bundles/zsh-users/zaw /home/denis/.antigen/bundles/zsh-users/zaw/functions /home/denis/.antigen/bundles/aperezdc/zsh-fzy /home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/dotenv /home/denis/.antigen/bundles/zsh-users/zsh-syntax-highlighting /home/denis/.antigen/bundles/lukechilds/zsh-nvm)
_antigen_compinit () {
  autoload -Uz compinit; compinit -i -d "/home/denis/.antigen/.zcompdump"; compdef _antigen antigen
  add-zsh-hook -D precmd _antigen_compinit
}
autoload -Uz add-zsh-hook; add-zsh-hook precmd _antigen_compinit
compdef () {}

if [[ -n "/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh" ]]; then
  ZSH="/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh"; ZSH_CACHE_DIR="/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/cache/"
fi
#--- BUNDLES BEGIN
source '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/lib/bzr.zsh';
source '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/lib/clipboard.zsh';
source '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/lib/compfix.zsh';
source '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/lib/completion.zsh';
source '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/lib/correction.zsh';
source '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/lib/diagnostics.zsh';
source '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/lib/directories.zsh';
source '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/lib/functions.zsh';
source '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/lib/git.zsh';
source '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/lib/grep.zsh';
source '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/lib/history.zsh';
source '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/lib/key-bindings.zsh';
source '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/lib/misc.zsh';
source '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/lib/nvm.zsh';
source '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/lib/prompt_info_functions.zsh';
source '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/lib/spectrum.zsh';
source '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/lib/termsupport.zsh';
source '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/lib/theme-and-appearance.zsh';
source '/home/denis/.antigen/bundles/adrieankhisbe/zsh-quiet-accept-line/quiet-accept-line.zsh';
source '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/pip/pip.plugin.zsh';
source '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/command-not-found/command-not-found.plugin.zsh';
source '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/nmap/nmap.plugin.zsh';
source '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/thefuck/thefuck.plugin.zsh';
source '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/systemd/systemd.plugin.zsh';
source '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/kubectl/kubectl.plugin.zsh';
source '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/docker-compose/docker-compose.plugin.zsh';
source '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git/git.plugin.zsh';
source '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/common-aliases/common-aliases.plugin.zsh';
source '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/compleat/compleat.plugin.zsh';
source '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/copyfile/copyfile.plugin.zsh';
source '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/django/django.plugin.zsh';
source '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/fasd/fasd.plugin.zsh';
source '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/gitfast/gitfast.plugin.zsh';
source '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git-extras/git-extras.plugin.zsh';
source '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/npm/npm.plugin.zsh';
source '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/vscode/vscode.plugin.zsh';
source '/home/denis/.antigen/bundles/Tarrasch/zsh-functional/functional.plugin.zsh';
source '/home/denis/.antigen/bundles/zsh-users/zsh-history-substring-search/zsh-history-substring-search.plugin.zsh';
source '/home/denis/.antigen/bundles/tarruda/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh';
source '/home/denis/.antigen/bundles/bil-elmoussaoui/flatpak-zsh-completion/flatpak.plugin.zsh';
source '/home/denis/.antigen/bundles/srijanshetty/zsh-pip-completion/zsh-pip-completion.plugin.zsh';
source '/home/denis/.antigen/bundles/lukechilds/zsh-better-npm-completion/zsh-better-npm-completion.plugin.zsh';
source '/home/denis/.antigen/bundles/ninrod/pass-zsh-completion/pass-zsh-completion.plugin.zsh';
source '/home/denis/.antigen/bundles/zsh-users/zsh-completions/zsh-completions.plugin.zsh';
source '/home/denis/.antigen/bundles/unixorn/git-extra-commands/git-extra-commands.plugin.zsh';
source '/home/denis/.antigen/bundles/arialdomartini/oh-my-git/base.sh';
source '/home/denis/.antigen/bundles/arialdomartini/oh-my-git/prompt.sh';
source '/home/denis/.antigen/bundles/MikeDacre/careful_rm/careful_rm.plugin.zsh';
source '/home/denis/.antigen/bundles/wfxr/forgit/forgit.plugin.zsh';
source '/home/denis/.antigen/bundles/zlsun/solarized-man/solarized-man.plugin.zsh';
source '/home/denis/.antigen/bundles/joel-porquet/zsh-dircolors-solarized/zsh-dircolors-solarized.zsh';
source '/home/denis/.antigen/bundles/MichaelAquilina/zsh-you-should-use/you-should-use.plugin.zsh';
source '/home/denis/.antigen/bundles/djui/alias-tips/alias-tips.plugin.zsh';
source '/home/denis/.antigen/bundles/unixorn/autoupdate-antigen.zshplugin/autoupdate-antigen.zsh';
source '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/fzf/fzf.plugin.zsh';
source '/home/denis/.antigen/bundles/leophys/zsh-plugin-fzf-finder/fzf-finder.plugin.zsh';
source '/home/denis/.antigen/bundles/ytet5uy4/fzf-widgets/init.zsh';
source '/home/denis/.antigen/bundles/wfxr/formarks/formarks.plugin.zsh';
source '/home/denis/.antigen/bundles/changyuheng/fz/fz.sh';
source '/home/denis/.antigen/bundles/zsh-users/zaw/zaw.zsh';
source '/home/denis/.antigen/bundles/aperezdc/zsh-fzy/zsh-fzy.plugin.zsh';
source '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/dotenv/dotenv.plugin.zsh';
source '/home/denis/.antigen/bundles/zsh-users/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh';
source '/home/denis/.antigen/bundles/lukechilds/zsh-nvm/zsh-nvm.plugin.zsh';
source '/home/denis/.antigen/bundles/denysdovhan/spaceship-prompt/spaceship.zsh';

#--- BUNDLES END
typeset -gaU _ANTIGEN_BUNDLE_RECORD; _ANTIGEN_BUNDLE_RECORD=('https://github.com/robbyrussell/oh-my-zsh.git lib plugin true' 'https://github.com/adrieankhisbe/zsh-quiet-accept-line.git / plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/pip plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/command-not-found plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/archive plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/completion plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/zshdirectory plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/editor plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/nmap plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/thefuck plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/systemd plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/docker plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/kubectl plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/docker-compose plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/git plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/common-aliases plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/compleat plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/copyfile plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/django plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/fasd plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/gitfast plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/git-extras plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/httpie plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/npm plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/vscode plugin true' 'https://github.com/Tarrasch/zsh-functional.git / plugin true' 'https://github.com/zsh-users/zsh-history-substring-search.git / plugin true' 'https://github.com/tarruda/zsh-autosuggestions.git / plugin true' 'https://github.com/bil-elmoussaoui/flatpak-zsh-completion.git / plugin true' 'https://github.com/srijanshetty/zsh-pip-completion.git / plugin true' 'https://github.com/lukechilds/zsh-better-npm-completion.git / plugin true' 'https://github.com/ninrod/pass-zsh-completion.git / plugin true' 'https://github.com/zsh-users/zsh-completions.git / plugin true' 'https://github.com/unixorn/git-extra-commands.git / plugin true' 'https://github.com/arialdomartini/oh-my-git.git / plugin true' 'https://github.com/MikeDacre/careful_rm.git / plugin true' 'https://github.com/wfxr/forgit.git / plugin true' 'https://github.com/zlsun/solarized-man.git / plugin true' 'https://github.com/joel-porquet/zsh-dircolors-solarized.git / plugin true' 'https://github.com/MichaelAquilina/zsh-you-should-use.git / plugin true' 'https://github.com/djui/alias-tips.git / plugin true' 'https://github.com/unixorn/autoupdate-antigen.zshplugin.git / plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/fzf plugin true' 'https://github.com/Vifon/deer.git / plugin true' 'https://github.com/leophys/zsh-plugin-fzf-finder.git / plugin true' 'https://github.com/ytet5uy4/fzf-widgets.git / plugin true' 'https://github.com/wfxr/formarks.git / plugin true' 'https://github.com/changyuheng/fz.git / plugin true' 'https://github.com/zsh-users/zaw.git / plugin true' 'https://github.com/aperezdc/zsh-fzy.git / plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/dotenv plugin true' 'https://github.com/zsh-users/zsh-syntax-highlighting.git / plugin true' 'https://github.com/lukechilds/zsh-nvm.git / plugin true' 'https://github.com/denysdovhan/spaceship-prompt spaceship.zsh-theme theme true')
typeset -g _ANTIGEN_CACHE_LOADED; _ANTIGEN_CACHE_LOADED=true
typeset -ga _ZCACHE_BUNDLE_SOURCE; _ZCACHE_BUNDLE_SOURCE=('/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/lib' '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/lib/bzr.zsh' '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/lib/clipboard.zsh' '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/lib/compfix.zsh' '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/lib/completion.zsh' '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/lib/correction.zsh' '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/lib/diagnostics.zsh' '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/lib/directories.zsh' '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/lib/functions.zsh' '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/lib/git.zsh' '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/lib/grep.zsh' '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/lib/history.zsh' '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/lib/key-bindings.zsh' '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/lib/misc.zsh' '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/lib/nvm.zsh' '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/lib/prompt_info_functions.zsh' '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/lib/spectrum.zsh' '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/lib/termsupport.zsh' '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/lib/theme-and-appearance.zsh' '/home/denis/.antigen/bundles/adrieankhisbe/zsh-quiet-accept-line//' '/home/denis/.antigen/bundles/adrieankhisbe/zsh-quiet-accept-line///quiet-accept-line.zsh' '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/pip' '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/pip/pip.plugin.zsh' '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/command-not-found' '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/command-not-found/command-not-found.plugin.zsh' '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/archive' '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/completion' '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/zshdirectory' '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/editor' '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/nmap' '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/nmap/nmap.plugin.zsh' '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/thefuck' '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/thefuck/thefuck.plugin.zsh' '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/systemd' '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/systemd/systemd.plugin.zsh' '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/docker' '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/kubectl' '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/kubectl/kubectl.plugin.zsh' '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/docker-compose' '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/docker-compose/docker-compose.plugin.zsh' '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git' '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git/git.plugin.zsh' '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/common-aliases' '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/common-aliases/common-aliases.plugin.zsh' '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/compleat' '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/compleat/compleat.plugin.zsh' '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/copyfile' '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/copyfile/copyfile.plugin.zsh' '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/django' '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/django/django.plugin.zsh' '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/fasd' '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/fasd/fasd.plugin.zsh' '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/gitfast' '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/gitfast/gitfast.plugin.zsh' '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git-extras' '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git-extras/git-extras.plugin.zsh' '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/httpie' '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/npm' '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/npm/npm.plugin.zsh' '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/vscode' '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/vscode/vscode.plugin.zsh' '/home/denis/.antigen/bundles/Tarrasch/zsh-functional//' '/home/denis/.antigen/bundles/Tarrasch/zsh-functional///functional.plugin.zsh' '/home/denis/.antigen/bundles/zsh-users/zsh-history-substring-search//' '/home/denis/.antigen/bundles/zsh-users/zsh-history-substring-search///zsh-history-substring-search.plugin.zsh' '/home/denis/.antigen/bundles/tarruda/zsh-autosuggestions//' '/home/denis/.antigen/bundles/tarruda/zsh-autosuggestions///zsh-autosuggestions.plugin.zsh' '/home/denis/.antigen/bundles/bil-elmoussaoui/flatpak-zsh-completion//' '/home/denis/.antigen/bundles/bil-elmoussaoui/flatpak-zsh-completion///flatpak.plugin.zsh' '/home/denis/.antigen/bundles/srijanshetty/zsh-pip-completion//' '/home/denis/.antigen/bundles/srijanshetty/zsh-pip-completion///zsh-pip-completion.plugin.zsh' '/home/denis/.antigen/bundles/lukechilds/zsh-better-npm-completion//' '/home/denis/.antigen/bundles/lukechilds/zsh-better-npm-completion///zsh-better-npm-completion.plugin.zsh' '/home/denis/.antigen/bundles/ninrod/pass-zsh-completion//' '/home/denis/.antigen/bundles/ninrod/pass-zsh-completion///pass-zsh-completion.plugin.zsh' '/home/denis/.antigen/bundles/zsh-users/zsh-completions//' '/home/denis/.antigen/bundles/zsh-users/zsh-completions///zsh-completions.plugin.zsh' '/home/denis/.antigen/bundles/unixorn/git-extra-commands//' '/home/denis/.antigen/bundles/unixorn/git-extra-commands///git-extra-commands.plugin.zsh' '/home/denis/.antigen/bundles/arialdomartini/oh-my-git//' '/home/denis/.antigen/bundles/arialdomartini/oh-my-git///base.sh' '/home/denis/.antigen/bundles/arialdomartini/oh-my-git///prompt.sh' '/home/denis/.antigen/bundles/MikeDacre/careful_rm//' '/home/denis/.antigen/bundles/MikeDacre/careful_rm///careful_rm.plugin.zsh' '/home/denis/.antigen/bundles/wfxr/forgit//' '/home/denis/.antigen/bundles/wfxr/forgit///forgit.plugin.zsh' '/home/denis/.antigen/bundles/zlsun/solarized-man//' '/home/denis/.antigen/bundles/zlsun/solarized-man///solarized-man.plugin.zsh' '/home/denis/.antigen/bundles/joel-porquet/zsh-dircolors-solarized//' '/home/denis/.antigen/bundles/joel-porquet/zsh-dircolors-solarized///zsh-dircolors-solarized.plugin.zsh' '/home/denis/.antigen/bundles/MichaelAquilina/zsh-you-should-use//' '/home/denis/.antigen/bundles/MichaelAquilina/zsh-you-should-use///you-should-use.plugin.zsh' '/home/denis/.antigen/bundles/djui/alias-tips//' '/home/denis/.antigen/bundles/djui/alias-tips///alias-tips.plugin.zsh' '/home/denis/.antigen/bundles/unixorn/autoupdate-antigen.zshplugin//' '/home/denis/.antigen/bundles/unixorn/autoupdate-antigen.zshplugin///autoupdate-antigen.zsh' '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/fzf' '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/fzf/fzf.plugin.zsh' '/home/denis/.antigen/bundles/Vifon/deer//' '/home/denis/.antigen/bundles/leophys/zsh-plugin-fzf-finder//' '/home/denis/.antigen/bundles/leophys/zsh-plugin-fzf-finder///fzf-finder.plugin.zsh' '/home/denis/.antigen/bundles/ytet5uy4/fzf-widgets//' '/home/denis/.antigen/bundles/ytet5uy4/fzf-widgets///init.zsh' '/home/denis/.antigen/bundles/wfxr/formarks//' '/home/denis/.antigen/bundles/wfxr/formarks///formarks.plugin.zsh' '/home/denis/.antigen/bundles/changyuheng/fz//' '/home/denis/.antigen/bundles/changyuheng/fz///fz.plugin.zsh' '/home/denis/.antigen/bundles/zsh-users/zaw//' '/home/denis/.antigen/bundles/zsh-users/zaw///zaw.plugin.zsh' '/home/denis/.antigen/bundles/zsh-users/zaw////functions' '/home/denis/.antigen/bundles/aperezdc/zsh-fzy//' '/home/denis/.antigen/bundles/aperezdc/zsh-fzy///zsh-fzy.plugin.zsh' '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/dotenv' '/home/denis/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/dotenv/dotenv.plugin.zsh' '/home/denis/.antigen/bundles/zsh-users/zsh-syntax-highlighting//' '/home/denis/.antigen/bundles/zsh-users/zsh-syntax-highlighting///zsh-syntax-highlighting.plugin.zsh' '/home/denis/.antigen/bundles/lukechilds/zsh-nvm//' '/home/denis/.antigen/bundles/lukechilds/zsh-nvm///zsh-nvm.plugin.zsh' '/home/denis/.antigen/bundles/denysdovhan/spaceship-prompt/spaceship.zsh-theme' '/home/denis/.antigen/bundles/denysdovhan/spaceship-prompt/spaceship.zsh-theme')
typeset -g _ANTIGEN_CACHE_VERSION; _ANTIGEN_CACHE_VERSION='develop'
typeset -g _ANTIGEN_THEME; _ANTIGEN_THEME='https://github.com/denysdovhan/spaceship-prompt spaceship'

#-- END ZCACHE GENERATED FILE