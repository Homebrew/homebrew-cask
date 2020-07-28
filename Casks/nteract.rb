cask "nteract" do
  version "0.24.1"
  sha256 "add53af86cac731fea08ed3d79aa4e6b15da43176b803cbd0a10f5e9ae668788"

  url "https://github.com/nteract/nteract/releases/download/v#{version}/nteract-#{version}.dmg"
  appcast "https://github.com/nteract/nteract/releases.atom"
  name "nteract"
  homepage "https://github.com/nteract/nteract"

  auto_updates true

  app "nteract.app"

  uninstall delete: "/usr/local/bin/nteract"

  zap trash: [
    "~/Library/Application Support/Caches/nteract-updater",
    "~/Library/Application Support/nteract",
    "~/Library/Logs/nteract",
    "~/Library/Preferences/io.nteract.nteract.plist",
    "~/Library/Saved Application State/io.nteract.nteract.savedState",
  ]
end
