cask "cityofzion-neon" do
  arch arm: "arm64", intel: "x64"

  version "2.17.4"
  sha256 arm:   "c571993f8914407d8ce643b70c9aa3b666374660394095cc20febe55aff6e3c5",
         intel: "666991079320d726f0a0a2e350335a27ea1ab8d4628f1a12fd4eb856944a7670"

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
