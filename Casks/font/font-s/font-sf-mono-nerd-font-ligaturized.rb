cask "font-sf-mono-nerd-font-ligaturized" do
  version :latest
  sha256 :no_check

  url "https://github.com/shaunsingh/SFMono-Nerd-Font-Ligaturized/archive/refs/heads/main.tar.gz"
  name "SF Mono Nerd Font Ligaturized"
  homepage "https://github.com/shaunsingh/SFMono-Nerd-Font-Ligaturized"

  font "SFMono-Nerd-Font-Ligaturized-main/LigaSFMonoNerdFont-Bold.otf"
  font "SFMono-Nerd-Font-Ligaturized-main/LigaSFMonoNerdFont-BoldItalic.otf"
  font "SFMono-Nerd-Font-Ligaturized-main/LigaSFMonoNerdFont-Heavy.otf"
  font "SFMono-Nerd-Font-Ligaturized-main/LigaSFMonoNerdFont-HeavyItalic.otf"
  font "SFMono-Nerd-Font-Ligaturized-main/LigaSFMonoNerdFont-Light.otf"
  font "SFMono-Nerd-Font-Ligaturized-main/LigaSFMonoNerdFont-LightItalic.otf"
  font "SFMono-Nerd-Font-Ligaturized-main/LigaSFMonoNerdFont-Medium.otf"
  font "SFMono-Nerd-Font-Ligaturized-main/LigaSFMonoNerdFont-MediumItalic.otf"
  font "SFMono-Nerd-Font-Ligaturized-main/LigaSFMonoNerdFont-Regular.otf"
  font "SFMono-Nerd-Font-Ligaturized-main/LigaSFMonoNerdFont-RegularItalic.otf"
  font "SFMono-Nerd-Font-Ligaturized-main/LigaSFMonoNerdFont-Semibold.otf"
  font "SFMono-Nerd-Font-Ligaturized-main/LigaSFMonoNerdFont-SemiboldItalic.otf"

  # No zap stanza required
end
