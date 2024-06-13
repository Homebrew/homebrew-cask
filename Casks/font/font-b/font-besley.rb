cask "font-besley" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/besley"
  name "Besley"
  homepage "https://fonts.google.com/specimen/Besley"

  font "Besley-Italic[wght].ttf"
  font "Besley[wght].ttf"

  # No zap stanza required
end
