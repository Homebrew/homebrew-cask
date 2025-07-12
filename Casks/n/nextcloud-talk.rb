cask "nextcloud-talk" do
  version "1.2.4"
  sha256 "da02da8c4ec80eb788b3b7604a333f1683d46cb550cb8ce58da47beb7eb4e206"

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
