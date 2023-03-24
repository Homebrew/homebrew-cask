cask "kindle-comic-converter" do
  version "5.6.1"
  sha256 "e16051d13146f0763712776db24318666760571fe6420017bf502f7a153f06fd"

  url "https://github.com/ciromattia/kcc/releases/download/v#{version}/KindleComicConverter_osx_#{version}.dmg",
      verified: "github.com/ciromattia/kcc"
  name "Kindle Comic Converter"
  name "KCC"
  desc "Comic and manga converter for ebook readers"
  homepage "https://kcc.iosphe.re/"

  depends_on macos: ">= :mojave"

  app "Kindle Comic Converter.app"
end
