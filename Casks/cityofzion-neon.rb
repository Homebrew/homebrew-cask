cask "cityofzion-neon" do
  version "2.5.0"
  sha256 "511208e87d3bf45e61ca943686f09bd8b79a6c4fdd8c66480bc3693840fb6c86"

  url "https://github.com/CityOfZion/neon-wallet/releases/download/#{version}/Neon-#{version}.Mac.dmg"
  appcast "https://github.com/CityOfZion/neon-wallet/releases.atom"
  name "Neon Wallet"
  desc "Light wallet for the NEO blockchain"
  homepage "https://github.com/CityOfZion/neon-wallet"

  app "Neon.app"

  zap trash: [
    "~/Library/Application Support/Neon",
    "~/Library/Preferences/com.electron.neon.helper.plist",
    "~/Library/Preferences/com.electron.neon.plist",
    "~/Library/Saved Application State/com.electron.neon.savedState",
  ]
end
