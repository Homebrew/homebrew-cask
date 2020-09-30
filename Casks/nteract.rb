cask "nteract" do
  version "0.25.1"
  sha256 "553c7e9d1ef9f27c920000498fb0b388a6168a2e708490797099e71fe37e2764"

  url "https://github.com/nteract/nteract/releases/download/v#{version}/nteract-#{version}.dmg"
  appcast "https://github.com/nteract/nteract/releases.atom"
  name "nteract"
  desc "Interactive computing suite"
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
