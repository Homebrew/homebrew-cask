cask "bitwarden" do
  version "2022.5.1"
  sha256 "7e9775f06142d903fcc8d39ee80fe2384602e21e4ce70eaa7fb1d3bef9632a25"

  url "https://github.com/bitwarden/clients/releases/download/desktop-v#{version}/Bitwarden-#{version}-universal-mac.zip",
      verified: "github.com/bitwarden/clients/"
  name "Bitwarden"
  desc "Desktop password and login vault"
  homepage "https://bitwarden.com/"

  livecheck do
    url :url
    strategy :github_latest
    regex(/href=.*?Bitwarden[._-]v?(\d+(?:\.\d+)+)-universal\.dmg/i)
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
