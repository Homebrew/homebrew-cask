cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "f5b9a8f27711430cecb8e14c49ee7cc4f40739426e24baa7afa4fff7ab609f3f",
         intel: "7f0fc5e249667daf7c006f4809482308c8dc68beacd1b6783b0383e4c04c228d"

  on_arm do
    version "2.7-alpha-428-g44dc9ed7e8"
  end
  on_intel do
    version "2.7-alpha-428-g44dc9ed7e8"
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
