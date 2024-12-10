cask "beekeeper-studio" do
  arch arm: "-arm64"

  version "5.0.6"
  sha256 arm:   "1c9a95aaf47abe9015b89a58f43e94a016d09f0418eae8a5ecc548707f537213",
         intel: "4eece2510cc82ba3303bb20aa0569f243d3e754a3c5c6ae5921539a06b22affa"

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
    "~/Library/Caches/io.beekeeperstudio.desktop",
    "~/Library/Caches/io.beekeeperstudio.desktop.ShipIt",
    "~/Library/Preferences/ByHost/io.beekeeperstudio.desktop.ShipIt.*.plist",
    "~/Library/Preferences/io.beekeeperstudio.desktop.plist",
    "~/Library/Saved Application State/io.beekeeperstudio.desktop.savedState",
  ]
end
