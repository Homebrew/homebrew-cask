cask "dvdstyler" do
  version "3.2.1_1"
  sha256 "79da43f15c1eb8002cf4a9282ff61047fdd0911532a413e0b3f9077530673ac5"

  url "https://downloads.sourceforge.net/dvdstyler/DVDStyler-#{version}-MacOSX.dmg",
      verified: "sourceforge.net/dvdstyler/"
  name "DVDStyler"
  desc "DVD authoring application"
  homepage "https://www.dvdstyler.org/"

  livecheck do
    url "https://www.dvdstyler.org/en/downloads"
    regex(%r{href=.*?/DVDStyler-(\d+(?:\.\d+)+(?:_\d+)*)-MacOSX\.dmg}i)
  end

  app "DVDStyler.app"
end
