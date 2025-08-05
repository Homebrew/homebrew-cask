cask "nrf-connect" do
  arch arm: "arm64", intel: "x64"

  version "5.2.0"
  sha256 arm:   "935e2eac4dcd28e15bbb109cf591e37f8a403326f0472ab4a4e21e7e0024ac1a",
         intel: "7f7148d6eb07650a8d8b50902acb568ed3406572eb9506e5bf50dc1ead80c8da"

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
