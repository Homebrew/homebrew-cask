cask "font-mali" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/mali"
  name "Mali"
  homepage "https://fonts.google.com/specimen/Mali"

  font "Mali-Bold.ttf"
  font "Mali-BoldItalic.ttf"
  font "Mali-ExtraLight.ttf"
  font "Mali-ExtraLightItalic.ttf"
  font "Mali-Italic.ttf"
  font "Mali-Light.ttf"
  font "Mali-LightItalic.ttf"
  font "Mali-Medium.ttf"
  font "Mali-MediumItalic.ttf"
  font "Mali-Regular.ttf"
  font "Mali-SemiBold.ttf"
  font "Mali-SemiBoldItalic.ttf"

  # No zap stanza required
end
