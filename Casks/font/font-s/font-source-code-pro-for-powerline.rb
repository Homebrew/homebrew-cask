cask "font-source-code-pro-for-powerline" do
  version :latest
  sha256 :no_check

  url "https://github.com/powerline/fonts.git",
      branch:    "master",
      only_path: "SourceCodePro"
  name "Source Code Pro for Powerline"
  homepage "https://github.com/powerline/fonts/tree/master/SourceCodePro"

  font "Source Code Pro Black for Powerline.otf"
  font "Source Code Pro Bold for Powerline.otf"
  font "Source Code Pro ExtraLight for Powerline.otf"
  font "Source Code Pro Light for Powerline.otf"
  font "Source Code Pro Medium for Powerline.otf"
  font "Source Code Pro Powerline BlackItalic.otf"
  font "Source Code Pro Powerline BoldItalic.otf"
  font "Source Code Pro Powerline ExtraLightItalic.otf"
  font "Source Code Pro Powerline Italic.otf"
  font "Source Code Pro Powerline LightItalic.otf"
  font "Source Code Pro Powerline MediumItalic.otf"
  font "Source Code Pro Powerline SemiboldItalic.otf"
  font "Source Code Pro Semibold for Powerline.otf"
  font "Source Code Pro for Powerline.otf"

  # No zap stanza required
end
