cask "profind" do
  version "1.8.6"
  sha256 "5db0e3d2128f5d86b2e32f8ed8d90455f7a7fc4c888dc89ac2a975e7d844f6cd"

  url "https://www.zeroonetwenty.com/profind/downloads/ProFind#{version.no_dots}.dmg"
  appcast "https://www.zeroonetwenty.com/profind/downloads/ProFindVersionInfo.xml"
  name "ProFind"
  homepage "https://www.zeroonetwenty.com/profind/"

  depends_on macos: ">= :high_sierra"

  app "ProFind.app"
end
