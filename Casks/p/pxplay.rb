cask "pxplay" do
  arch arm: "arm64", intel: "amd64"
  version "1.5.0"
  build "v1.5.0_v6.8.0"

  url "https://github.com/streamingdv/PSPlay-Application-Hosting/releases/download/#{build}/PXPlay_#{version}_macOSX_#{arch}.dmg"
  name "PXPlay"
  desc "Third-party Remote Play client for PlayStation consoles"
  homepage "https://streamingdv.github.io/pxplay"

  depends_on macos: ">= :monterey"

  app "PXPlay.app"

  zap trash: [
    "~/Library/Application Support/PXPlay",
    "~/Library/Preferences/com.streamingdv.pxplay.plist",
    "~/Library/Saved Application State/com.streamingdv.pxplay.savedState",
    "~/Library/Caches/com.streamingdv.pxplay",
  ]

  caveats <<~EOS
    PXPlay requires a valid license key to function.
    You can purchase a license at: https://streamingdv.com/shop-list-ns
    System Requirements:
    - macOS 12.7 (Monterey) or newer
    - Up-to-date graphics drivers
    - PlayStation console for remote play
    By installing PXPlay, you agree to the EULA:
    https://raw.githubusercontent.com/streamingdv/PSPlay-Application-Hosting/main/eula.txt
  EOS
end
