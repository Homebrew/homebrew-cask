cask "8x8-work" do
  arch arm: "-arm64"

  version "8.26.2-3"
  sha256 arm:   "2cc9441016b4e2e6c358d8f8914dce0776323755191b29e3d2200a60a80bf55e",
         intel: "924e06abb0ffe665182b879b2bb6055b857f0a988874de7410dd3225b3758b3a"

  url "https://work-desktop-assets.8x8.com/prod-publish/ga/work#{arch}-dmg-v#{version}.dmg"
  name "8x8_work"
  desc "Communications application with voice, video, chat, and web conferencing"
  homepage "https://www.8x8.com/products/apps"

  livecheck do
    url "https://support-portal.8x8.com/helpcenter/docrenderservice/services/rest/documents/8bff4970-6fbf-4daf-842d-8ae9b533153d"
    regex(/work[._-]dmg[._-]v(\d+(?:[.-]\d+)+)\.dmg/i)
  end

  app "8x8 Work.app"

  zap trash: "~/Library/Application Support/8x8 Work"
end
