cask "profind" do
  version "1.8.5"
  sha256 "9ba68e44d78d5f587e0c47203d474820ce4c9ba1051d09fe12b65739e92fcc0f"

  url "https://www.zeroonetwenty.com/profind/downloads/ProFind#{version.no_dots}.dmg"
  appcast "https://www.zeroonetwenty.com/profind/downloads/ProFindVersionInfo.xml"
  name "ProFind"
  homepage "https://www.zeroonetwenty.com/profind/"

  depends_on macos: ">= :high_sierra"

  app "ProFind.app"
end
