cask "8x8-work" do
  arch arm: "-arm64"

  version "8.16.3-2"
  sha256 arm:   "44d3d51fcad3d31b0c293b98497d8d6707cbd8702a40e8dc5f9addbcf142e2f4",
         intel: "08a210ae82e4e17b301135052bb2ca96ab87963c779345d24c733f79bcc638f2"

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
