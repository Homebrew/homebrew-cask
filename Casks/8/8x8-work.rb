cask "8x8-work" do
  version "8.10.3-2"
  sha256 "bec4524d71df530059a75d3d7bbfb306d4e99dff211433bc19ad35846f3fd67e"

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
