cask "8x8-work" do
  arch arm: "-arm64"

  version "8.32.2-10"
  sha256 arm:   "64b4f566378d1417cba150bfc62f11a7250f2a6d2a6b189fc666d36cc615423d",
         intel: "12278cd2a8ab972bc96c81c971f091836e70826d1ed9e0cab805f967f7ac82bf"

  url "https://work-desktop-assets.8x8.com/prod-publish/ga/work#{arch}-dmg-v#{version}.dmg"
  name "8x8_work"
  desc "Communications application with voice, video, chat, and web conferencing"
  homepage "https://docs.8x8.com/8x8WebHelp/8x8-work-for-desktop/Content/workd/about-the-app.htm"

  livecheck do
    url "https://support-portal.8x8.com/helpcenter/docrenderservice/services/rest/documents/8bff4970-6fbf-4daf-842d-8ae9b533153d"
    regex(/href=.*?work[._-]dmg[._-]v?(\d+(?:[.-]\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :monterey"

  app "8x8 Work.app"

  zap trash: "~/Library/Application Support/8x8 Work"
end
