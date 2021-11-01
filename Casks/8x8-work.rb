cask "8x8-work" do
  version "7.11.4-3"
  sha256 "bc8b391879dac9dc6e3093c459d76aa56b30d0ca5929552bf86e8ab4f02aca7a"

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
