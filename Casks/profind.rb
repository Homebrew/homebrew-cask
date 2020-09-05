cask "profind" do
  version "1.8.0"
  sha256 "5a9d303b6c01b9968383147a8c77c80547d0131ce60af27563ecb0fe73277ce4"

  url "https://www.zeroonetwenty.com/profind/downloads/ProFind#{version.no_dots}.dmg"
  appcast "https://www.zeroonetwenty.com/profind/downloads/ProFindVersionInfo.xml"
  name "ProFind"
  homepage "https://www.zeroonetwenty.com/profind/"

  depends_on macos: ">= :high_sierra"

  app "ProFind.app"
end
