cask "font-inconsolata" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/inconsolata/Inconsolata%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Inconsolata"
  homepage "https://fonts.google.com/specimen/Inconsolata"

  font "Inconsolata[wdth,wght].ttf"

  # No zap stanza required
end
