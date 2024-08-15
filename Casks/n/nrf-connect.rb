cask "nrf-connect" do
  arch arm: "arm64", intel: "x64"

  version "5.0.2"
  sha256 arm:   "b691cc5692a818cb067fe79cea6fd4573b9602013d90d9bc9fe2e95649c9eace",
         intel: "499a9efbec65a62be9e90d23f2505fbafb46702171f1b0180f2d01f81fe7a857"

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
  depends_on macos: ">= :catalina"

  app "nRF Connect for Desktop.app"

  zap trash: [
    "~/.nrfconnect-apps",
    "~/Library/Application Support/nrfconnect",
    "~/Library/Preferences/com.nordicsemi.nrfconnect.plist",
    "~/Library/Saved Application State/com.nordicsemi.nrfconnect.savedState",
  ]
end
