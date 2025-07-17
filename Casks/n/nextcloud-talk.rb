cask "nextcloud-talk" do
  version "1.2.5"
  sha256 "ca38b5050bb36f0176038d6089933fcca56d1117530137457cc453801dc45a09"

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
