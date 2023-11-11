cask "cityofzion-neon" do
  arch arm: "arm64", intel: "x64"

  version "2.23.5"
  sha256 arm:   "783b2f86da05e0572ed0ccdc4109eec72a6051374643219795698c9a4ffac6d2",
         intel: "6b1b08f0b5fe423cd1ecf380eef977c22002b9722bf3085e1e73f14dde714e6a"

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
