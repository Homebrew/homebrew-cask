cask "nrf-connect" do
  arch arm: "arm64", intel: "x64"

  version "5.4.0"
  sha256 arm:   "aa1c3154d40258c2fb4a82a923629efc837772e2754f5eb4c24d9c53d1457ef7",
         intel: "f677d359a764aae0a7ce4e8870f5c36bc1d00dc8a2e0d05c601d823e41fb8983"

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
