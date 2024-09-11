cask "kindle-comic-converter" do
  arch arm: "arm", intel: "i386"

  version "6.2.0"
  sha256 arm:   "080fcb0b5f87606e46a745efe9af6001e7f6c01c2821ee333347dfd2d98c96ce",
         intel: "ae645f1c0417610aa48a783b7fc0cc309e4fb9c1bf718aafdbd9c72ee3bb0355"

  url "https://github.com/ciromattia/kcc/releases/download/v#{version}/kcc_macos_#{arch}_#{version}.dmg",
      verified: "github.com/ciromattia/kcc/"
  name "Kindle Comic Converter"
  name "KCC"
  desc "Comic and manga converter for ebook readers"
  homepage "https://kcc.iosphe.re/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :mojave"

  app "Kindle Comic Converter.app"

  zap trash: "~/Library/Preferences/com.kindlecomicconverter.KindleComicConverter.plist"
end
