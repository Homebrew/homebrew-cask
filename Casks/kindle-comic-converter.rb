cask "kindle-comic-converter" do
  version "5.6.2"
  sha256 "5541dfc24f87f4de9f25fffb6a9f9965195ce2112794d03cd16d526d2f76da07"

  url "https://github.com/ciromattia/kcc/releases/download/v#{version}/KindleComicConverter_osx_#{version}.dmg",
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
