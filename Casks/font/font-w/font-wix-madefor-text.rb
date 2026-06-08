cask "font-wix-madefor-text" do
  version "3.100"
  sha256 "7fdbd012ca9e245d7c177a341bdbdf789521590e175322a9013c035981138f1c"

  url "https://github.com/wix-incubator/wixmadefor/releases/download/#{version}/wixmadefor-fonts.zip",
      verified: "github.com/wix-incubator/wixmadefor/"
  name "Wix Madefor Text"
  homepage "https://www.wix.com/typeface/madefor"

  font "wixmadefor-fonts/fonts/variable/WixMadeforText[wght].ttf"
  font "wixmadefor-fonts/fonts/variable/WixMadeforText-Italic[wght].ttf"

  # No zap stanza required
end
