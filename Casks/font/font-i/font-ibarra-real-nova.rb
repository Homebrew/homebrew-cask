cask "font-ibarra-real-nova" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/ibarrarealnova"
  name "Ibarra Real Nova"
  homepage "https://fonts.google.com/specimen/Ibarra+Real+Nova"

  font "IbarraRealNova-Italic[wght].ttf"
  font "IbarraRealNova[wght].ttf"

  # No zap stanza required
end
