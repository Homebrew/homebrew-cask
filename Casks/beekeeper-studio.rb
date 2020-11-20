cask "beekeeper-studio" do
  version "1.8.10"
  sha256 "c7e5ecb06044e5e1f2430241af255a8cf6a05b67368c6782a5158db8e5dc5db9"

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
