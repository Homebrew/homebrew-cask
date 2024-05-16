cask "font-merriweather-sans" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/merriweathersans"
  name "Merriweather Sans"
  homepage "https://fonts.google.com/specimen/Merriweather+Sans"

  font "MerriweatherSans-Italic[wght].ttf"
  font "MerriweatherSans[wght].ttf"

  # No zap stanza required
end
