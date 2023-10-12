cask "cityofzion-neon" do
  arch arm: "arm64", intel: "x64"

  version "2.21.3"
  sha256 arm:   "11b5f5fd2254959442e5a215bd73b35bfa04031fd0287b02cfdb9d676aee147e",
         intel: "0f8f4897d8637f8b2a75255fbef058ff2e66ceffca1dce8ac0e8e56e2db31817"

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
