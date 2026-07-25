cask "font-tomorrow" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/tomorrow"
  name "Tomorrow"
  homepage "https://fonts.google.com/specimen/Tomorrow"

  font "Tomorrow-Black.ttf"
  font "Tomorrow-BlackItalic.ttf"
  font "Tomorrow-Bold.ttf"
  font "Tomorrow-BoldItalic.ttf"
  font "Tomorrow-ExtraBold.ttf"
  font "Tomorrow-ExtraBoldItalic.ttf"
  font "Tomorrow-ExtraLight.ttf"
  font "Tomorrow-ExtraLightItalic.ttf"
  font "Tomorrow-Italic.ttf"
  font "Tomorrow-Light.ttf"
  font "Tomorrow-LightItalic.ttf"
  font "Tomorrow-Medium.ttf"
  font "Tomorrow-MediumItalic.ttf"
  font "Tomorrow-Regular.ttf"
  font "Tomorrow-SemiBold.ttf"
  font "Tomorrow-SemiBoldItalic.ttf"
  font "Tomorrow-Thin.ttf"
  font "Tomorrow-ThinItalic.ttf"

  # No zap stanza required
end
