cask "specter" do
  version "1.4.2"
  sha256 "0cf1fd5e724544d81b882645d67bc083404bc8883bb16f7bd81f5068d9aa821b"

  url "https://github.com/cryptoadvance/specter-desktop/releases/download/v#{version}/SpecterDesktop-v#{version}.dmg",
      verified: "github.com/cryptoadvance/specter-desktop/"
  name "Specter"
  desc "Desktop GUI for Bitcoin Core optimised to work with hardware wallets"
  homepage "https://specter.solutions/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Specter.app"

  zap trash: [
    "~/Library/Application Support/specter-desktop",
    "~/Library/Preferences/solutions.specter.desktop.plist",
    "~/Library/Saved Application State/solutions.specter.desktop.savedState",
  ]
end
