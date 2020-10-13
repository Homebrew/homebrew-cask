cask "profind" do
  version "1.8.2"
  sha256 "00a9719a5d6a6d5f2fe9cea7b1a85ee9e2669500902e78124c48f3294f34860c"

  url "https://www.zeroonetwenty.com/profind/downloads/ProFind#{version.no_dots}.dmg"
  appcast "https://www.zeroonetwenty.com/profind/downloads/ProFindVersionInfo.xml"
  name "ProFind"
  homepage "https://www.zeroonetwenty.com/profind/"

  depends_on macos: ">= :high_sierra"

  app "ProFind.app"
end
