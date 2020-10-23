cask "profind" do
  version "1.8.3"
  sha256 "475dac0db32936a636a742eb7955803340b72f5bdf387aae3b6555be0cff7383"

  url "https://www.zeroonetwenty.com/profind/downloads/ProFind#{version.no_dots}.dmg"
  appcast "https://www.zeroonetwenty.com/profind/downloads/ProFindVersionInfo.xml"
  name "ProFind"
  homepage "https://www.zeroonetwenty.com/profind/"

  depends_on macos: ">= :high_sierra"

  app "ProFind.app"
end
