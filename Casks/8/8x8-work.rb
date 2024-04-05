cask "8x8-work" do
  version "8.11.3-2"
  sha256 "df10505ce462833073e5ec5cf1b15f1df26ee47b1ad86d5af263ab83606ce74d"

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
