cask "nteract" do
  version "0.25.0"
  sha256 "7e27a84a43254fa2f798a803c0316eaff4c7f2fdc670f768923fff6d4adaecbe"

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
