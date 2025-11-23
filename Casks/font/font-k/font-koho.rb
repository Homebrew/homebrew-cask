cask "font-koho" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/koho"
  name "KoHo"
  homepage "https://fonts.google.com/specimen/KoHo"

  font "KoHo-Bold.ttf"
  font "KoHo-BoldItalic.ttf"
  font "KoHo-ExtraLight.ttf"
  font "KoHo-ExtraLightItalic.ttf"
  font "KoHo-Italic.ttf"
  font "KoHo-Light.ttf"
  font "KoHo-LightItalic.ttf"
  font "KoHo-Medium.ttf"
  font "KoHo-MediumItalic.ttf"
  font "KoHo-Regular.ttf"
  font "KoHo-SemiBold.ttf"
  font "KoHo-SemiBoldItalic.ttf"

  # No zap stanza required
end
