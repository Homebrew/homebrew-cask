cask "cityofzion-neon" do
  arch arm: "arm64", intel: "x64"

  version "2.20.3"
  sha256 arm:   "c1e3f608c292818795ecc3be39993464b1cfb80f9dcbd0c515d528b0d62ce6f1",
         intel: "b93247bfae48a2d8158284e8ebe7bc1f36203cda1ba1b4ed30f27ced868b8742"

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
