cask "cityofzion-neon" do
  version "2.6.0"
  sha256 "2f102ebfc3815d804acaaa852b59ecd0ee709a0aa87c883ecd95ed98b3618a80"

  url "https://github.com/CityOfZion/neon-wallet/releases/download/v#{version}/Neon.#{version}.dmg"
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
