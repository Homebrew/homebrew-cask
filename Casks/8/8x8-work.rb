cask "8x8-work" do
  arch arm: "-arm64"

  version "8.34.1-11"
  sha256 arm:   "3f26bf3a07e83c0e8e0b303c66f1440dac8d902c78d846c8b7a50073f0485077",
         intel: "baffb08ba42e24beb1fcc315397109c9656d5b0d073e450ffad54d8140eaa29a"

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
