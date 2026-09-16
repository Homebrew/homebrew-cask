cask "nextcloud-talk" do
  version "2.3.2"
  sha256 "d3f43ac9b245331220bb0a690305d5ca5c9ebdd46a70ad71ac8fdda70ac58660"

  url "https://github.com/nextcloud-releases/talk-desktop/releases/download/v#{version}/Nextcloud.Talk-macos-universal.dmg"
  name "Nextcloud Talk Desktop"
  desc "Official Nextcloud Talk Desktop client"
  homepage "https://nextcloud.com/talk/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "Nextcloud Talk.app"

  zap trash: [
    "~/Library/Application Support/Nextcloud Talk",
    "~/Library/Preferences/com.nextcloud.talk.mac.plist",
  ]
end
