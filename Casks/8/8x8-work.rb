cask "8x8-work" do
  arch arm: "-arm64"

  version "8.18.2-7"
  sha256 arm:   "0f6897f85773c3516b6682995aea878121edf37e40f90a0c0b286ec65fdceb92",
         intel: "ce5e8b9e7734d3b0e0358f9a414a8a4abb91d2393303a989698a9bf5aad8473f"

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
