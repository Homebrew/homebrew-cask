cask "font-hurmit-nerd-font" do
  version "3.5.1"
  sha256 "61c1a9e87216eb25b69171cd8f39098be86306ebdf65b3b3a273192f3a3bbbb0"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/Hermit.tar.xz"
  name "Hurmit Nerd Font (Hermit)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

  no_autobump! because: :bumped_by_upstream

  font "HurmitNerdFont-Bold.otf"
  font "HurmitNerdFont-BoldItalic.otf"
  font "HurmitNerdFont-Italic.otf"
  font "HurmitNerdFont-Light.otf"
  font "HurmitNerdFont-LightItalic.otf"
  font "HurmitNerdFont-Regular.otf"
  font "HurmitNerdFontMono-Bold.otf"
  font "HurmitNerdFontMono-BoldItalic.otf"
  font "HurmitNerdFontMono-Italic.otf"
  font "HurmitNerdFontMono-Light.otf"
  font "HurmitNerdFontMono-LightItalic.otf"
  font "HurmitNerdFontMono-Regular.otf"
  font "HurmitNerdFontPropo-Bold.otf"
  font "HurmitNerdFontPropo-BoldItalic.otf"
  font "HurmitNerdFontPropo-Italic.otf"
  font "HurmitNerdFontPropo-Light.otf"
  font "HurmitNerdFontPropo-LightItalic.otf"
  font "HurmitNerdFontPropo-Regular.otf"

  # No zap stanza required
end
