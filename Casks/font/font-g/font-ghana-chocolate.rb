cask "font-ghana-chocolate" do
  version :latest
  sha256 :no_check

  url "https://www.lottewellfood.com/download/content/gana/Ghanachocolate/otf",
      referer: "https://www.lottewellfood.com/prcenter/gana"
  name "Ghana Chocolate"
  homepage "https://www.lottewellfood.com/prcenter/gana"

  rename "otf", "Ghanachocolate.otf"

  font "Ghanachocolate.otf"

  # No zap stanza required
end
