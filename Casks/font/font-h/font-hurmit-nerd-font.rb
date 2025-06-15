cask "font-hurmit-nerd-font" do
  version "3.4.0"
  sha256 "123b73cbe9c775ff60b2c878e49a82fd7d4aa95b200bd2b5063fc38e888765a8"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/Hermit.zip"
  name "Hurmit Nerd Font (Hermit)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  no_autobump! because: :bumped_by_upstream

  livecheck do
    url :url
    strategy :github_latest
  end

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
