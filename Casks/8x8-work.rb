cask "8x8-work" do
  version "7.24.3-10"
  sha256 "355af7f3ba4db57f6c9a278637cae60bd0835aec2f837ab33d41122213ffa089"

  url "https://vod-updates.8x8.com/ga/work-dmg-v#{version}.dmg"
  name "8x8_work"
  desc "Communications application with voice, video, chat, and web conferencing"
  homepage "https://www.8x8.com/products/apps"

  livecheck do
    url "https://support.8x8.com/cloud-phone-service/voice/work-desktop/download-8x8-work-for-desktop#Download_for_Mac"
    regex(/work[._-]dmg[._-]v(\d+(?:.\d+)*)\.dmg/i)
  end

  app "8x8 Work.app"

  zap trash: "~/Library/Application Support/8x8 Work"
end
