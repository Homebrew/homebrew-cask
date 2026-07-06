cask "8x8-work" do
  arch arm: "-arm64"

  version "8.35.2-6"
  sha256 arm:   "24be6f8e2b864f4ca7b9acd661e81a4171278d86b8105f8ada0cc3221b28e87b",
         intel: "2630392a6d8e1efd5eec1540de3ae9be6b11694a333dec995719476113b3eff4"

  url "https://work-desktop-assets.8x8.com/prod-publish/ga/work#{arch}-dmg-v#{version}.dmg"
  name "8x8_work"
  desc "Communications application with voice, video, chat, and web conferencing"
  homepage "https://docs.8x8.com/8x8WebHelp/8x8-work-for-desktop/Content/workd/about-the-app.htm"

  livecheck do
    url "https://support-portal.8x8.com/helpcenter/docrenderservice/services/rest/documents/8bff4970-6fbf-4daf-842d-8ae9b533153d"
    regex(/href=.*?work[._-]dmg[._-]v?(\d+(?:[.-]\d+)+)\.dmg/i)
  end

  depends_on macos: :monterey

  app "8x8 Work.app"

  zap trash: "~/Library/Application Support/8x8 Work"
end
