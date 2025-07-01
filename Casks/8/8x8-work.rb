cask "8x8-work" do
  arch arm: "-arm64"

  version "8.24.2-2"
  sha256 arm:   "853762cd8aa84a5c23a619ba39e44135340f849bf15b7877b500b4b5a98b8af1",
         intel: "38a63a415fbfa114011fa0965659fb5e0090109adc70472b00b8585626de6183"

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
