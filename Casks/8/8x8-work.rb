cask "8x8-work" do
  arch arm: "-arm64"

  version "8.15.2-7"
  sha256 arm:   "c66134b0d3d2bda56f59022714dcbfa072c064fa6a687b58e0642af2dc0009c2",
         intel: "2c743f1ba50a71c8d3b0f99d9723d52c4d8c1cd174fe93ae4cdd98977232aa7d"

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
