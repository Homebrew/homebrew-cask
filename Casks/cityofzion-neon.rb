cask "cityofzion-neon" do
  arch arm: "arm64", intel: "x64"

  version "2.18.1"
  sha256 arm:   "092a86fed9fa98f358012496c243fa1e431ee49faf3df22882522e03d9ee0931",
         intel: "69c2a85f986a8a87c12c0e396bf40b8b330de6b61ac4b5da908a93b8773a0ea1"

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
