cask "font-cabin" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/cabin"
  name "Cabin"
  homepage "https://fonts.google.com/specimen/Cabin"

  font "Cabin-Italic[wdth,wght].ttf"
  font "Cabin[wdth,wght].ttf"

  # No zap stanza required
end
