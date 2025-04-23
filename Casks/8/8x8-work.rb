cask "8x8-work" do
  arch arm: "-arm64"

  version "8.22.2-7"
  sha256 arm:   "ec0916ca285f6b223a6bf95ba8e554c20c3a45758416f0c55990e9fcb53407d2",
         intel: "6679ac583e398c18e6bcae9dc61fec5424c611bf83306a89afe3294f5c452e11"

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
