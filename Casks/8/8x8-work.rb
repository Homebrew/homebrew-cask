cask "8x8-work" do
  arch arm: "-arm64"

  version "8.19.2-3"
  sha256 arm:   "58d8f6b3969afc4e76913ed1d910e88e204be77b4b5e0b29d2f14ccf96e71325",
         intel: "9ae42a0cf9991eb7548b2da27e87fe6f3b5455e18c9336d0435906bf1cda5ac6"

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
