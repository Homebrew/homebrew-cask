cask "specter" do
  version "1.14.1"
  sha256 "0365f62bd2a3a56cfea4e6ca8861123ddd7216b86a60949e3276146c7eead9d2"

  url "https://github.com/cryptoadvance/specter-desktop/releases/download/v#{version}/Specter-v#{version}.dmg",
      verified: "github.com/cryptoadvance/specter-desktop/"
  name "Specter"
  desc "Desktop GUI for Bitcoin Core optimised to work with hardware wallets"
  homepage "https://specter.solutions/"

  livecheck do
    url "https://github.com/cryptoadvance/specter-desktop/releases/"
    regex(%r{v?(\d+(?:\.\d+)+)/Specter.*?\.dmg}i)
    strategy :page_match
  end

  depends_on macos: ">= :catalina"

  app "Specter.app"

  zap trash: [
    "~/Library/Application Support/specter-desktop",
    "~/Library/Preferences/solutions.specter.desktop.plist",
    "~/Library/Saved Application State/solutions.specter.desktop.savedState",
  ]
end
