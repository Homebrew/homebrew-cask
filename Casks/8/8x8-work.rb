cask "8x8-work" do
  arch arm: "-arm64"

  version "8.21.2-1"
  sha256 arm:   "3270bc3c048a339c91025c27e3214e760846599b09490cb1bb32482a2d369459",
         intel: "4f9d5eef1a19fb28889132f6fe5841911c1cb2a0d5c9df6ada566362bb8c03ad"

  url "https://work-desktop-assets.8x8.com/prod-publish/ga/work#{arch}-dmg-v#{version}.dmg"
  name "8x8_work"
  desc "Communications application with voice, video, chat, and web conferencing"
  homepage "https://www.8x8.com/products/apps"

  livecheck do
    url "https://support-portal.8x8.com/helpcenter/docrenderservice/services/rest/documents/8bff4970-6fbf-4daf-842d-8ae9b533153d"
    regex(/work[._-]dmg[._-]v(\d+(?:[.-]\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :catalina"

  app "8x8 Work.app"

  zap trash: "~/Library/Application Support/8x8 Work"
end
