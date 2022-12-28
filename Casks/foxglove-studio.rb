cask "foxglove-studio" do
  version "1.35.2"
  sha256 "5060dd7a13cae5baf5a1d71ef530f58dabfc55f4a7f840e327a7cd1179dd3b42"

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
