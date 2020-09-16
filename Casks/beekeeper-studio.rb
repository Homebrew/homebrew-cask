cask "beekeeper-studio" do
  version "1.7.5"
  sha256 "ecd99632a6cb5eada14de1594c3033fe796db1cb19d5cfd92ecd0af9bd3db7a7"

  # github.com/beekeeper-studio/beekeeper-studio/ was verified as official when first introduced to the cask
  url "https://github.com/beekeeper-studio/beekeeper-studio/releases/download/v#{version}/Beekeeper-Studio-#{version}.dmg"
  appcast "https://github.com/beekeeper-studio/beekeeper-studio/releases.atom"
  name "Beekeeper Studio"
  desc "Cross platform SQL editor and database management app"
  homepage "https://www.beekeeperstudio.io/"

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
