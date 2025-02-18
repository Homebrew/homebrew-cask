cask "8x8-work" do
  arch arm: "-arm64"

  version "8.20.2-12"
  sha256 arm:   "59b82274e1fe47de4663a75c49692736f199202fddf0262a80339a81905c09fd",
         intel: "9cf69cd2683ee8d8d1e4d6de32eab81bf29da9070c20054f7747ddfdc1bcd9ad"

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
