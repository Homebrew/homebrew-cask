cask "8x8-work" do
  arch arm: "-arm64"

  version "8.28.2-3"
  sha256 arm:   "0c29e0de06a9a785e0f95987dc498b9c77aa7a27f21ddd8910e7d78dd430bdce",
         intel: "ef175728d83f68386c065723142a0d7d3f635ad6c355796fdc904fd47b45f4f1"

  url "https://work-desktop-assets.8x8.com/prod-publish/ga/work#{arch}-dmg-v#{version}.dmg"
  name "8x8_work"
  desc "Communications application with voice, video, chat, and web conferencing"
  homepage "https://www.8x8.com/products/apps"

  livecheck do
    url "https://support-portal.8x8.com/helpcenter/docrenderservice/services/rest/documents/8bff4970-6fbf-4daf-842d-8ae9b533153d"
    regex(/work[._-]dmg[._-]v(\d+(?:[.-]\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :big_sur"

  app "8x8 Work.app"

  zap trash: "~/Library/Application Support/8x8 Work"
end
