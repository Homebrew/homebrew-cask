cask "beekeeper-studio" do
  version "3.4.1"

  arch = Hardware::CPU.intel? ? "" : "-arm64"

  if Hardware::CPU.intel?
    sha256 "1c755c7826dd20560e8e00255ec6428a4926868e194f50cdfcf4c1897ac048a2"
  else
    sha256 "25edc00d018b341b60826837de23905fa0b7cd4685b1fb163bb51735456ebfa9"
  end

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
