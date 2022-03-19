cask "bitwarden" do
  version "1.32.0"
  sha256 "c758f1145f91fd8dcac1dab19458100fc238711d704de1426a366b482368a678"

  url "https://github.com/bitwarden/desktop/releases/download/v#{version}/Bitwarden-#{version}-universal-mac.zip",
      verified: "github.com/bitwarden/desktop/"
  name "Bitwarden"
  desc "Desktop password and login vault"
  homepage "https://bitwarden.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Bitwarden.app"

  uninstall quit: [
    "com.bitwarden.desktop",
    "com.bitwarden.desktop.helper",
  ]

  zap trash: [
    "~/Library/Application Support/Bitwarden",
    "~/Library/Caches/com.bitwarden.desktop",
    "~/Library/Caches/com.bitwarden.desktop.ShipIt",
    "~/Library/Logs/Bitwarden",
    "~/Library/Preferences/ByHost/com.bitwarden.desktop.ShipIt.*.plist",
    "~/Library/Preferences/com.bitwarden.desktop.helper.plist",
    "~/Library/Preferences/com.bitwarden.desktop.plist",
    "~/Library/Saved Application State/com.bitwarden.desktop.savedState",
  ]
end
