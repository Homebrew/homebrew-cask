cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "c8fe732e1c776f0383fb27cf9897ce5745ce1e263692f327f062465f95b3bfdc",
         intel: "019eabd36010f54e607c284fef5ee5fcebe2d00cd469ff83b7bd2b0d3c0bd1de"

  on_arm do
    version "2.7-alpha-391-g894563b3fd"
  end
  on_intel do
    version "2.7-alpha-391-g894563b3fd"
  end

  url "https://downloads.mixxx.org/snapshots/main/mixxx-#{version}-macos#{arch}.dmg"
  name "Mixxx"
  desc "Open-source DJ software"
  homepage "https://www.mixxx.org/"

  livecheck do
    url "https://downloads.mixxx.org/snapshots/main/manifest.json"
    strategy :json do |json|
      json.dig("macos-macos#{arch}", "git_describe")
    end
  end

  conflicts_with cask: "mixxx"
  depends_on :macos

  app "Mixxx.app"

  zap trash: [
    "~/Library/Application Scripts/org.mixxx.mixxx",
    "~/Library/Containers/org.mixxx.mixxx",
    "~/Music/Mixxx",
  ]
end
