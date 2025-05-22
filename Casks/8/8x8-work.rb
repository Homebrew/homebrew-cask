cask "8x8-work" do
  arch arm: "-arm64"

  version "8.23.2-2"
  sha256 arm:   "ce4cbdbea67e3dafd97f605073871091e35b68cce5cbf77c7831845a28bb33d4",
         intel: "081621b3d12b34f75d3b221ca16b9fa5d6447c3084bfb8a2b0e1f481dc8292b5"

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
