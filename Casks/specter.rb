cask "specter" do
  version "1.5.1"
  sha256 "af6fc3bad1dfe59980d4b3aeb988f0dd2bb3fc5ae98bcddc20bbf8b36538b200"

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
