cask "kindle-comic-converter" do
  version "5.6.5"
  sha256 "18c3d1fb4a997f027568f7891305aa60b3b5d459c4c7dafa9bc5a85e414bee79"

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
