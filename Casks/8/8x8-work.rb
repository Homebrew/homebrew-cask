cask "8x8-work" do
  arch arm: "-arm64"

  version "8.31.3-1"
  sha256 arm:   "298446c6581c8da07eee245603695de77a935c93a0babddda8dd956f81c170d0",
         intel: "058c48e123d8352c876c51ed33ff158b3175cc77218610fca37dd60874021a6c"

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
