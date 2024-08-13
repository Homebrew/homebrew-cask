cask "cityofzion-neon" do
  arch arm: "arm64", intel: "x64"

  version "2.24.0"
  sha256 arm:   "e6138cea6e2dd23a52f8633d5379d27065228628c527634fcf9a03f507a309d2",
         intel: "77ca53d27e24ffd2d6dc3cecb20ee661ae13d86961b44c7b46d9d6c154f4207f"

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
