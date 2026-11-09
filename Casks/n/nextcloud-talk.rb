cask "nextcloud-talk" do
  version "2.3.3"
  sha256 "20f37c2c199f798e12957a1d61cf18ccd10cf71dc35e59c6853955da234476d4"

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
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.nextcloud.talk.mac.sfl*",
    "~/Library/Application Support/Nextcloud Talk",
    "~/Library/Preferences/com.nextcloud.talk.mac.plist",
  ]
end
