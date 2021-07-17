cask "specter" do
  version "1.5.0"
  sha256 "63ec10c26e51704ca84a249ccd15edf5d14891d22f7f29153fbd4d5b52c4a21d"

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
