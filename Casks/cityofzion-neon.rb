cask "cityofzion-neon" do
  arch arm: "arm64", intel: "x64"

  version "2.17.1"
  sha256 arm:   "22fb819a74250fb07be9194550f276b5e44cd80b026ce5288e77d342b27ace9d",
         intel: "b6e78319da7352ec08c691ad9ed9be8481e17d61199aa06e838873ab09571d0d"

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
