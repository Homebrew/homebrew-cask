cask "cityofzion-neon" do
  arch arm: "arm64", intel: "x64"

  version "2.16.29"
  sha256 arm:   "63393374fc0eadec168fd80de49093a24401c759c3d792ed8bd2bd4499827ba7",
         intel: "995645fd352762248bbe9063844b224e8e22c9178ed905c7598b8e96713a694c"

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
