cask "8x8-work" do
  arch arm: "-arm64"

  version "8.17.3-3"
  sha256 arm:   "7b428a671cc7ca4ad8bacf094ff3cda67779d205e655b7897cad4175e1b07b32",
         intel: "806f2bf39c613df99f73474883ef9d8ce49b81455a7cc6f7f02e3be6789a61ee"

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
