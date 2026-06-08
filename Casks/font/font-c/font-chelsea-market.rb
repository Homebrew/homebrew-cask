cask "font-chelsea-market" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/chelseamarket/ChelseaMarket-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Chelsea Market"
  homepage "https://fonts.google.com/specimen/Chelsea+Market"

  font "ChelseaMarket-Regular.ttf"

  # No zap stanza required
end
