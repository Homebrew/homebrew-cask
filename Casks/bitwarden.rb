cask "bitwarden" do
  version "1.28.3"
  sha256 "19d4845b817b8b5098ac4927446c07adf8461b985e6b18ac3102a0313949f15f"

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
