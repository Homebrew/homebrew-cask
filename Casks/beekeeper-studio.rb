cask "beekeeper-studio" do
  version "1.10.2"
  sha256 "54d64350279f05a7fa41d35e80d571f11e560607ae1f5e154d89a30aee631ade"

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
