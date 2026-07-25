cask "font-kulim-park" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/kulimpark"
  name "Kulim Park"
  homepage "https://fonts.google.com/specimen/Kulim+Park"

  font "KulimPark-Bold.ttf"
  font "KulimPark-BoldItalic.ttf"
  font "KulimPark-ExtraLight.ttf"
  font "KulimPark-ExtraLightItalic.ttf"
  font "KulimPark-Italic.ttf"
  font "KulimPark-Light.ttf"
  font "KulimPark-LightItalic.ttf"
  font "KulimPark-Regular.ttf"
  font "KulimPark-SemiBold.ttf"
  font "KulimPark-SemiBoldItalic.ttf"

  # No zap stanza required
end
