cask "kindle-comic-converter" do
  version "5.5.2"
  sha256 "73d3f7ab9fc3e1e3dee62a83848fb52bba62f45fef56063466a0ac9c9f57513a"

  url "https://kcc.iosphe.re/OSX/KindleComicConverter_osx_#{version}.dmg"
  appcast "https://github.com/ciromattia/kcc/releases.atom"
  name "Kindle Comic Converter"
  name "KCC"
  desc "Comic and manga converter for ebook readers"
  homepage "https://kcc.iosphe.re/"

  depends_on macos: ">= :mojave"

  app "Kindle Comic Converter.app"
end
