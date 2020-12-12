cask "nteract" do
  version "0.27.0"
  sha256 "d28b4df9f8c62f33e603d276c5323afc19a91071f9a7aa030d1a6b42dd6f60c1"

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
