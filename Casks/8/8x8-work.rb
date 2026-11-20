cask "8x8-work" do
  arch arm: "-arm64"

  version "8.38.5-1"
  sha256 arm:   "d4e4f48b8e2435fae53791efd6470a60513fbf904238bd18c1cee93c45eb2b1a",
         intel: "8547534f528df8c48523a167678ba8cf23047e0f3a560ec0925a13d96c840230"

  url "https://work-desktop-assets.8x8.com/prod-publish/ga/work#{arch}-dmg-v#{version}.dmg"
  name "8x8_work"
  desc "Communications application with voice, video, chat, and web conferencing"
  homepage "https://docs.8x8.com/8x8WebHelp/8x8-work-for-desktop/Content/workd/about-the-app.htm"

  livecheck do
    url "https://help.8x8.com/docs/download-8x8-work-for-desktop"
    regex(/href=.*?work#{arch}[._-]dmg[._-]v?(\d+(?:[.-]\d+)+)\.dmg/i)
  end

  depends_on macos: :monterey

  app "8x8 Work.app"

  zap trash: [
    "~/Library/Application Support/8x8 Work",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.8x8---virtual-office.sfl*",
    "~/Library/Logs/8x8 Work",
    "~/Library/Preferences/com.electron.8x8---virtual-office.plist",
  ]
end
