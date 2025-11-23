cask "nteract" do
  version "0.28.0"
  sha256 "de65abe5ed76489217a9c29bcc177aa5b2ee2f0657cd017301af33280ca8a737"

  url "https://github.com/nteract/nteract/releases/download/v#{version}/nteract-#{version}.dmg"
  name "nteract"
  desc "Interactive computing suite"
  homepage "https://github.com/nteract/nteract"

  livecheck do
    url :url
    strategy :github_latest
  end

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

  caveats do
    requires_rosetta
  end
end
