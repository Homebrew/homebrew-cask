cask "cityofzion-neon" do
  arch arm: "arm64", intel: "x64"

  version "2.19.2"
  sha256 arm:   "a2246373798633761a50011f1bcba218e8eaa6e6ea7fbaef3d3ebc500063c43d",
         intel: "de8e341d2eceea39c323f7d4643a817a02d00d7886900129bb86842c850b0fe2"

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
