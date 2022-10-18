cask "beekeeper-studio" do
  arch arm: "-arm64"

  version "3.6.2"
  sha256 arm:   "f64c60f2f01647e489442e75b90e29058e548b9620316761ba9f78d5c7d233fc",
         intel: "cdbeb8c32e11cd9c76360e17e0692d95d548464fbb414cfc0a1a84d802624a6f"

  url "https://github.com/beekeeper-studio/beekeeper-studio/releases/download/v#{version}/Beekeeper-Studio-#{version}#{arch}.dmg",
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
    "~/Library/Application Support/beekeeper-studio",
    "~/Library/Application Support/Caches/beekeeper-studio-updater",
    "~/Library/Caches/io.beekeeperstudio.desktop.ShipIt",
    "~/Library/Caches/io.beekeeperstudio.desktop",
    "~/Library/Preferences/ByHost/io.beekeeperstudio.desktop.ShipIt.*.plist",
    "~/Library/Preferences/io.beekeeperstudio.desktop.plist",
    "~/Library/Saved Application State/io.beekeeperstudio.desktop.savedState",
  ]
end
