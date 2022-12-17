cask "cityofzion-neon" do
  arch arm: "arm64", intel: "x64"

  version "2.16.16"
  sha256 arm:   "bf8a2614eaae39af61482a2fe70dc1b106be378d189623cb917f126ba3e870f0",
         intel: "f4a8be1c0d503a1847665d6e3e5e20763d889396e3bc3da22676db3500aaa7f9"

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
