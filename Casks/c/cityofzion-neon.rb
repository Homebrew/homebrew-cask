cask "cityofzion-neon" do
  arch arm: "arm64", intel: "x64"

  version "2.20.2"
  sha256 arm:   "f56792a87e0957456e93cfee53cb4a93bb0ff7f8f08f188cec4e42450aef8dca",
         intel: "809de86a6c1799b6ad34634ca808d8e59d312f4fd9e499765e3995e88cac6132"

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
