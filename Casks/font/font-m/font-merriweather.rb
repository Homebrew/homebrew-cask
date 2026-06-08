cask "font-merriweather" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/merriweather"
  name "Merriweather"
  homepage "https://fonts.google.com/specimen/Merriweather"

  font "Merriweather-Italic[opsz,wdth,wght].ttf"
  font "Merriweather[opsz,wdth,wght].ttf"

  # No zap stanza required
end
