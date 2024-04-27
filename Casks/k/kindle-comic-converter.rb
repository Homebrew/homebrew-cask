cask "kindle-comic-converter" do
  version "5.6.5"
  sha256 "c32d71b35f1d8f34a8706a79cda2766b24b5f7ad5cab10253ebf28e7464972a6"

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
