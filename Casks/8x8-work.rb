cask "8x8-work" do
  version "7.8.2-2"
  sha256 "e2b58cfba9e7372e7d504478e5810010dfcde8f6edf978c558ee198554264694"

  url "https://vod-updates.8x8.com/ga/work-dmg-v#{version}.dmg"
  name "8x8_work"
  desc "Communications application with voice, video, chat, and web conferencing"
  homepage "https://www.8x8.com/products/apps"

  livecheck do
    url "https://support.8x8.com/cloud-phone-service/voice/work-desktop/download-8x8-work-for-desktop#Download_for_Mac"
    regex(/work[._-]dmg[._-]v(\d+(?:.\d+)*)\.dmg/i)
  end

  app "8x8 Work.app"

  zap trash: [
    "~/Library/Application Support/8x8 Work",
  ]
end
