cask "cityofzion-neon" do
  arch arm: "arm64", intel: "x64"

  version "2.18.0"
  sha256 arm:   "c9d842074e8be1c5845d3068a223e558e743c53f85adaf77c2eca730cccb49ae",
         intel: "598038e2fb33aaf74a596352cae72ceab94e323040dceda8f70494585afdaa6d"

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
