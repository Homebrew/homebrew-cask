cask "8x8-work" do
  arch arm: "-arm64"

  version "8.21.3-1"
  sha256 arm:   "79b7bbf8054bd607530ea29bbf42d516d1959511f9fe95bfcca10577fbb035ea",
         intel: "e3c04c4449c8308d837528b839085e2550dac97a45422463cc621bb2bb00363d"

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
