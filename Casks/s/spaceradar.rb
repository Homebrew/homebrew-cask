cask "spaceradar" do
  version "5.1.0"
  sha256 "af9fdbaf96658cb990f45a76183ca1ce91184d5a91e78676aa57095c9906a06d"

  url "https://github.com/zz85/space-radar/releases/download/v#{version}/SpaceRadar-darwin-x64.zip"
  name "SpaceRadar"
  desc "Disk space and memory visualiser"
  homepage "https://github.com/zz85/space-radar"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "SpaceRadar.app"

  uninstall quit: "com.electron.spaceradar"

  zap trash: [
    "~/Library/Application Support/space-radar",
    "~/Library/Caches/space-radar",
    "~/Library/Preferences/com.electron.spaceradar.plist",
    "~/Library/Saved Application State/com.electron.spaceradar.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
