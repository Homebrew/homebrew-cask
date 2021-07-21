cask "8x8-work" do
  version "7.8.2-2"
  sha256 "e2b58cfba9e7372e7d504478e5810010dfcde8f6edf978c558ee198554264694"
  url "https://vod-updates.8x8.com/ga/work-dmg-v#{version}.dmg",
      verified: "vod-updates.8x8.com/"
  name "8x8 Work"
  homepage "https://support.8x8.com/cloud-phone-service/voice/work-desktop"

  app "8x8 Work.app"
end
