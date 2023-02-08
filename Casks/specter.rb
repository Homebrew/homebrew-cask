cask "specter" do
  version "1.14.5"
  sha256 "62e907621d728853931a6b4c41436f53b429c3988eb64fd91c3cca2cb5baaf44"

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
