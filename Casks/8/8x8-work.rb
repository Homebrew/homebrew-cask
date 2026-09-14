cask "8x8-work" do
  arch arm: "-arm64"

  version "8.37.2-1"
  sha256 arm:   "3915128bf0a3f8700781c55184254638f4b323d990668fe712f6742d1aecbe5c",
         intel: "0d338a3b17cbc289ce414b452543dec67eb49c4064042236f69235dc6adfa658"

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
