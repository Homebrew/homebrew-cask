cask "font-asap" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/asap"
  name "Asap"
  homepage "https://fonts.google.com/specimen/Asap"

  font "Asap-Italic[wdth,wght].ttf"
  font "Asap[wdth,wght].ttf"

  # No zap stanza required
end
