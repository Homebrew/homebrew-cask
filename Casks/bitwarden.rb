cask "bitwarden" do
  version "1.30.0"
  sha256 "8495fc110e74189b148cb85b012c70ac55e24984de6a9cece57f95bb851d2bdc"

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
