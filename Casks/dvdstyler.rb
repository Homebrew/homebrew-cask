cask "dvdstyler" do
  version "3.1"
  sha256 "c66d291db8b2dbe9af21b8e210983198b930b02fef1b51866c365bb2493376c5"

  # sourceforge.net/dvdstyler/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/dvdstyler/DVDStyler-#{version}-MacOSX.dmg"
  appcast "https://sourceforge.net/projects/dvdstyler/rss"
  name "DVDStyler"
  homepage "https://www.dvdstyler.org/"

  depends_on macos: ">= :yosemite"

  app "DVDStyler.app"
end
