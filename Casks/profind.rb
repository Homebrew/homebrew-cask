cask "profind" do
  version "1.8.8"
  sha256 "08b87313fffe63543a7b72d817b77ac9793dbb2d27b09d94edc7123b86462e22"

  url "https://www.zeroonetwenty.com/profind/downloads/ProFind#{version.no_dots}.dmg"
  appcast "https://www.zeroonetwenty.com/profind/downloads/ProFindVersionInfo.xml"
  name "ProFind"
  homepage "https://www.zeroonetwenty.com/profind/"

  depends_on macos: ">= :high_sierra"

  app "ProFind.app"
end
