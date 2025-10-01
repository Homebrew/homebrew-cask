cask "8x8-work" do
  arch arm: "-arm64"

  version "8.27.2-4"
  sha256 arm:   "64e9f385cd98e9df85405672421fd81e68be62f11fe80dcc29a5b08cc5ce0d12",
         intel: "149cc245e2d755efc155cfea3281858715eab0b06adfe3da7a3aeb7708dc0480"

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
