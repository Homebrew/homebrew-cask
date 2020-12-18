cask "cityofzion-neon" do
  version "2.6.1"
  sha256 "260f136bd5ebad053e5454a97fa35fb848b610de658ea7549fdf5719fac4c29f"

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
