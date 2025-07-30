cask "8x8-work" do
  arch arm: "-arm64"

  version "8.25.2-6"
  sha256 arm:   "26c43f19bf034a254add9b8e74053d99fbe9dbbefa78dd42ad41213731d41549",
         intel: "b9a0830351f9bf67697fb8f25be0d1a28dde117578c67332d1f99f467b14a9c8"

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
