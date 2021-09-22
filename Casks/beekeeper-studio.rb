cask "beekeeper-studio" do
  version "2.1.3"
  sha256 "0455849ee19b6e524680f908b0a227523bba89cef28be7e7feb0fc6e9108b517"

  url "https://github.com/beekeeper-studio/beekeeper-studio/releases/download/v#{version}/Beekeeper-Studio-#{version}.dmg",
      verified: "github.com/beekeeper-studio/beekeeper-studio/"
  name "Beekeeper Studio"
  desc "Cross platform SQL editor and database management app"
  homepage "https://www.beekeeperstudio.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Beekeeper Studio.app"

  zap trash: [
    "~/Library/Application Support/Caches/beekeeper-studio-updater",
    "~/Library/Application Support/beekeeper-studio",
    "~/Library/Caches/io.beekeeperstudio.desktop",
    "~/Library/Caches/io.beekeeperstudio.desktop.ShipIt",
    "~/Library/Preferences/ByHost/io.beekeeperstudio.desktop.ShipIt.*.plist",
    "~/Library/Preferences/io.beekeeperstudio.desktop.plist",
    "~/Library/Saved Application State/io.beekeeperstudio.desktop.savedState",
  ]
end
