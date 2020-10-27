cask "nteract" do
  version "0.26.0"
  sha256 "8cf33c99cdfdd9bd1623aac9ac0ea51f9b6043a4be28b4520429413a79af5856"

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
