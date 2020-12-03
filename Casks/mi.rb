cask "mi" do
  version "3.5"
  sha256 "9df5cae930b7b59b0022befdb69abcaff616bd4034f6612a24f3139fe01499a9"

  url "https://www.mimikaki.net/download/mi#{version}.dmg"
  appcast "https://www.mimikaki.net/download/appcast.xml"
  name "mi"
  desc "Text editor"
  homepage "https://www.mimikaki.net/"

  conflicts_with cask: "homebrew/cask-versions/mi-beta"

  app "mi.app"

  zap trash: [
    "~/Library/Caches/net.mimikaki.mi",
    "~/Library/Preferences/net.mimikaki.mi.plist",
  ]
end
