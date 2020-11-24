cask "profind" do
  version "1.8.7"
  sha256 "4fa1b8afb10bba3107a52269504678b16affe99c272206f9198fb0f70f9404b7"

  url "https://www.zeroonetwenty.com/profind/downloads/ProFind#{version.no_dots}.dmg"
  appcast "https://www.zeroonetwenty.com/profind/downloads/ProFindVersionInfo.xml"
  name "ProFind"
  homepage "https://www.zeroonetwenty.com/profind/"

  depends_on macos: ">= :high_sierra"

  app "ProFind.app"
end
