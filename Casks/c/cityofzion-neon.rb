cask "cityofzion-neon" do
  arch arm: "arm64", intel: "x64"

  version "2.21.1"
  sha256 arm:   "786f867d5d262772c0f84bc5cbc79382f260448a09250c0a4ae650d2b57b0a99",
         intel: "119a7e2b375113621de16860bc26212296a546799a6a86bdaae3a742c0faba9a"

  url "https://github.com/CityOfZion/neon-wallet/releases/download/v#{version}/Neon.#{version}.#{arch}.dmg"
  name "Neon Wallet"
  desc "Light wallet for the NEO blockchain"
  homepage "https://github.com/CityOfZion/neon-wallet"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Neon.app"

  zap trash: [
    "~/Library/Application Support/Neon",
    "~/Library/Preferences/com.electron.neon.helper.plist",
    "~/Library/Preferences/com.electron.neon.plist",
    "~/Library/Saved Application State/com.electron.neon.savedState",
  ]
end
