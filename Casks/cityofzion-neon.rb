cask "cityofzion-neon" do
  arch arm: "arm64", intel: "x64"

  version "2.17.3"
  sha256 arm:   "2b6e2982b7ebd84b281d1ad544125758dd191cec9cc7354ec3490d9367aa8670",
         intel: "ec8ebd8de50865cead1ac2bdf5ce932c28c37a65a094b0f80c5cd915ae009446"

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
