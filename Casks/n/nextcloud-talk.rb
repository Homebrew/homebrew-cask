cask "nextcloud-talk" do
  version "1.1.9"
  sha256 "72dd275f600939d31e5556e59e7118b89c55884f7590d471005ebb68baa97b93"

  url "https://github.com/nextcloud-releases/talk-desktop/releases/download/v#{version}/Nextcloud.Talk-macos-universal.dmg",
      verified: "github.com/nextcloud-releases/talk-desktop/releases/download/"
  name "Nextcloud Talk Desktop"
  desc "Official Nextcloud Talk Desktop client"
  homepage "https://nextcloud.com/talk/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "Nextcloud Talk.app"

  zap trash: [
    "~/Library/Application Support/Nextcloud Talk",
    "~/Library/Preferences/com.nextcloud.talk.mac.plist",
  ]
end
