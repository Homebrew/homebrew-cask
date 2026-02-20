cask "nextcloud-talk" do
  version "2.1.1"
  sha256 "ae9ebe6d86f763cc845d8518f9cb83a3b2f0e9cabf1149cf8cb22ab1c29e50b7"

  url "https://github.com/nextcloud-releases/talk-desktop/releases/download/v#{version}/Nextcloud.Talk-macos-universal.dmg",
      verified: "github.com/nextcloud-releases/talk-desktop/releases/download/"
  name "Nextcloud Talk Desktop"
  desc "Official Nextcloud Talk Desktop client"
  homepage "https://nextcloud.com/talk/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "Nextcloud Talk.app"

  zap trash: [
    "~/Library/Application Support/Nextcloud Talk",
    "~/Library/Preferences/com.nextcloud.talk.mac.plist",
  ]
end
