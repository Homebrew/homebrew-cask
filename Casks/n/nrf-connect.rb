cask "nrf-connect" do
  arch arm: "arm64", intel: "x64"

  version "5.2.1"
  sha256 arm:   "fe03fd1586195c60f3a1eda32fb9dfdd3b081abd6a5f44f02d39a814844aee83",
         intel: "04b3bd673a97bac572e717cdeb9ae7737ae9dc047d9f022589f0093435783e38"

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

  app "nRF Connect for Desktop.app"

  zap trash: [
    "~/.nrfconnect-apps",
    "~/Library/Application Support/nrfconnect",
    "~/Library/Preferences/com.nordicsemi.nrfconnect.plist",
    "~/Library/Saved Application State/com.nordicsemi.nrfconnect.savedState",
  ]
end
