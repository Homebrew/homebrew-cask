cask "8x8-work" do
  arch arm: "-arm64"

  version "8.38.4-1"
  sha256 arm:   "00bc452679a6705256e6ebb33f282dd798493fbfee84b5d11c21cb5e873f8016",
         intel: "93205f7e7c915487e7d6c959a4ea4d8e15c33c65295f200589efce75eadaecbb"

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
