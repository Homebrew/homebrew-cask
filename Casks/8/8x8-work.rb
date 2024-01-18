cask "8x8-work" do
  version "8.9.3-1"
  sha256 "6372d61b9ceaf62de9f05bcb4979871819f31daccbd9ae6b0951fa3d800c2b99"

  url "https://vod-updates.8x8.com/ga/work-dmg-v#{version}.dmg"
  name "8x8_work"
  desc "Communications application with voice, video, chat, and web conferencing"
  homepage "https://www.8x8.com/products/apps"

  livecheck do
    url "https://support.8x8.com/business-phone/voice/work-desktop/download-8x8-work-for-desktop"
    regex(/work[._-]dmg[._-]v(\d+(?:.\d+)*)\.dmg/i)
  end

  depends_on macos: ">= :high_sierra"

  app "8x8 Work.app"

  zap trash: "~/Library/Application Support/8x8 Work"
end
