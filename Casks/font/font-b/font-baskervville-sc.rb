cask "font-baskervville-sc" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/baskervvillesc/BaskervvilleSC%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Baskervville SC"
  homepage "https://fonts.google.com/specimen/Baskervville+SC"

  font "BaskervvilleSC[wght].ttf"

  # No zap stanza required
end
