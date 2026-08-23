cask "8x8-work" do
  arch arm: "-arm64"

  version "8.36.2-3"
  sha256 arm:   "2cf54acde15ac58740db4baf8a474b601707023816d3637a616df203092d24a1",
         intel: "ae5da045ddf28cd9f99e459dcc18033f9bc055c9f8c35ede1b65f63671bb5e7e"

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
