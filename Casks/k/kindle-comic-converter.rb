cask "kindle-comic-converter" do
  version "5.6.4"
  sha256 "38d8f9c728724654f3dbc717acd60bdfece64c9d6bec8f9fcb2ab8d69859ddc5"

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
