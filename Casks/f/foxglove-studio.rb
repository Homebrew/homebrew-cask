cask "foxglove-studio" do
  version "1.72.0"
  sha256 "3e01e2aca6c92ba24d2b93f671005d0c469015c1fa10c9b4d3fc313851ff1766"

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
