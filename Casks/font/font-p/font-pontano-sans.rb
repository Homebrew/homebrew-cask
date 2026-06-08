cask "font-pontano-sans" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/pontanosans/PontanoSans%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Pontano Sans"
  homepage "https://fonts.google.com/specimen/Pontano+Sans"

  font "PontanoSans[wght].ttf"

  # No zap stanza required
end
