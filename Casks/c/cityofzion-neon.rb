cask "cityofzion-neon" do
  arch arm: "arm64", intel: "x64"

  version "2.24.1"
  sha256 arm:   "c91a9dea23889bc62513fb947fb31e6ff15b7e9d26e053dce117012791bfa684",
         intel: "16cc311213328d38512031a436fb1c1a20172482bfe514d5986fd50b999101c5"

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
