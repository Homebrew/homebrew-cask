cask "specter" do
  version "1.4.0"
  sha256 "952434ccb20b9d86640f0bffd1b8b63e51ca5c570749978fc792fe6611226b2f"

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
