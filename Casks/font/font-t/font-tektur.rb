cask "font-tektur" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/tektur/Tektur%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Tektur"
  homepage "https://fonts.google.com/specimen/Tektur"

  font "Tektur[wdth,wght].ttf"

  # No zap stanza required
end
