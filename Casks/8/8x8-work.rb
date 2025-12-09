cask "8x8-work" do
  arch arm: "-arm64"

  version "8.29.1-3"
  sha256 arm:   "c6aa78d0911a0cb504a21bcf8421de703cc7dd07b7388903cf29227ca5955737",
         intel: "a631ac34ce2d43b6c2b68d33bddb436757b2129bd901f343775efa46337c64fd"

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
