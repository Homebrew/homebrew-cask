cask "deadbeef" do
  version "1.8.5-beta2"
  sha256 "d6ad1718a8bb8ec2ccb75d657df287dcda134a3a91650430c9f8fd3615467e90"

  url "https://downloads.sourceforge.net/deadbeef/travis/osx/master/deadbeef-#{version}-osx-x86_64.zip",
      verified: "downloads.sourceforge.net/deadbeef/"
  appcast "https://sourceforge.net/projects/deadbeef/rss?path=/travis/osx/master"
  name "DeaDBeeF"
  desc "Modular audio player"
  homepage "https://deadbeef.sourceforge.io/"

  app "DeaDBeeF.app"

  zap trash: [
    "~/Library/Preferences/com.deadbeef.deadbeef.plist",
    "~/Library/Preferences/deadbeef",
    "~/Library/Saved Application State/com.deadbeef.deadbeef.savedState",
  ]
end
