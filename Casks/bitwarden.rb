cask "bitwarden" do
  version "1.25.0"
  sha256 "ae5a1d122a84e7c373cf6773968f485d316a568ca74f765f46d04a4f598a24da"

  url "https://github.com/bitwarden/desktop/releases/download/v#{version}/Bitwarden-#{version}-mac.zip",
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
    "~/Library/Logs/Bitwarden",
    "~/Library/Application Support/Bitwarden",
    "~/Library/Caches/com.bitwarden.desktop",
    "~/Library/Caches/com.bitwarden.desktop.ShipIt",
    "~/Library/Preferences/ByHost/com.bitwarden.desktop.ShipIt.*.plist",
    "~/Library/Preferences/com.bitwarden.desktop.plist",
    "~/Library/Preferences/com.bitwarden.desktop.helper.plist",
    "~/Library/Saved Application State/com.bitwarden.desktop.savedState",
  ]
end
