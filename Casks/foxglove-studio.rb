cask "foxglove-studio" do
  version "1.31.1"
  sha256 "a83bf665fb2867b113b8fbfc37e05b7ecf321ba7f8a6f378dcf44a788573c988"

  url "https://github.com/foxglove/studio/releases/download/v#{version}/foxglove-studio-#{version}-mac-universal.dmg",
      verified: "github.com/foxglove/studio/"
  name "Foxglove Studio"
  desc "Visualization and debugging tool for robotics"
  homepage "https://foxglove.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Foxglove Studio.app"

  zap trash: [
    "~/Library/Application Scripts/dev.foxglove.studio.quicklook",
    "~/Library/Application Support/Foxglove Studio",
    "~/Library/Caches/dev.foxglove.studio",
    "~/Library/Caches/dev.foxglove.studio.ShipIt",
    "~/Library/Containers/dev.foxglove.studio.quicklook",
    "~/Library/Preferences/dev.foxglove.studio.plist",
    "~/Library/Saved Application State/dev.foxglove.studio.savedState",
  ]
end
