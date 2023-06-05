cask "beekeeper-studio" do
  arch arm: "-arm64"

  version "3.9.14"
  sha256 arm:   "99ad395d2ff4ab34e29157ddc4ef6207cd9bdb400d12e36c9ee8cd3aed5428dd",
         intel: "60a64e5abe7ea14493b09215a30fb6fa7e5a882da64504204a96f28d69c11aa2"

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
