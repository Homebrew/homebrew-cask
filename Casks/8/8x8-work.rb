cask "8x8-work" do
  arch arm: "-arm64"

  version "8.33.2-2"
  sha256 arm:   "c9eaf3b9017a44864e4ed89d7b4f55e49ffe5b979401d1a425c03fb2d8f414bb",
         intel: "5edeb2fdf5ef994a1d94e9b250c825929c18986ad4476eeb9d1a77a8a10947ea"

  url "https://work-desktop-assets.8x8.com/prod-publish/ga/work#{arch}-dmg-v#{version}.dmg"
  name "8x8_work"
  desc "Communications application with voice, video, chat, and web conferencing"
  homepage "https://docs.8x8.com/8x8WebHelp/8x8-work-for-desktop/Content/workd/about-the-app.htm"

  livecheck do
    url "https://support-portal.8x8.com/helpcenter/docrenderservice/services/rest/documents/8bff4970-6fbf-4daf-842d-8ae9b533153d"
    regex(/href=.*?work[._-]dmg[._-]v?(\d+(?:[.-]\d+)+)\.dmg/i)
  end

  depends_on macos: :monterey

  app "8x8 Work.app"

  zap trash: "~/Library/Application Support/8x8 Work"
end
