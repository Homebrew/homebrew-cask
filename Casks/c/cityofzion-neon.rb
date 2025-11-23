cask "cityofzion-neon" do
  arch arm: "arm64", intel: "x64"

  version "2.25.1"
  sha256 arm:   "6b4b6008d2984484e2848d352616ef3263529ca5d0f0738ebf04300e6e6beb02",
         intel: "224141c65c163a6c8aa721a9e03064a7dbaeb63aa199e08d1c4230b53ac5f117"

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
