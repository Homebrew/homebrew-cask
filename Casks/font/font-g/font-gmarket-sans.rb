cask "font-gmarket-sans" do
  version :latest
  sha256 :no_check

  url "https://corp.gmarket.com/fonts/GmarketSansOTF.zip"
  name "Gmarket Sans"
  homepage "https://corp.gmarket.com/fonts/"

  font "GmarketSansOTF/GmarketSansBold.otf"
  font "GmarketSansOTF/GmarketSansLight.otf"
  font "GmarketSansOTF/GmarketSansMedium.otf"

  # No zap stanza required
end
