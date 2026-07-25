cask "nrf-connect" do
  arch arm: "arm64", intel: "x64"

  version "5.3.2"
  sha256 arm:   "f2560327241bb237204780365f612a4f5657972e33eea3fe460fa44ec934f300",
         intel: "83fcc54158d45db9223dc1cdc1076871e538e0158d653104e212ce0aacb6454c"

  url "https://github.com/NordicSemiconductor/pc-nrfconnect-launcher/releases/download/v#{version}/nrfconnect-#{version}-#{arch}.dmg",
      verified: "github.com/NordicSemiconductor/pc-nrfconnect-launcher/"
  name "nRF Connect for Desktop"
  desc "Framework for development on BLE devices"
  homepage "https://www.nordicsemi.com/Products/Development-tools/nRF-Connect-for-Desktop"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on :macos

  app "nRF Connect for Desktop.app"

  zap trash: [
    "~/.nrfconnect-apps",
    "~/Library/Application Support/nrfconnect",
    "~/Library/Preferences/com.nordicsemi.nrfconnect.plist",
    "~/Library/Saved Application State/com.nordicsemi.nrfconnect.savedState",
  ]
end
