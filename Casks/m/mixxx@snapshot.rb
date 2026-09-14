cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "4f7aa6cd5427a4c01b65aa286af3db07fdf1473f505d79dd168bc5c91e887310",
         intel: "2f863955f204a614ea37b1ac30c633d3bb2e67f6a5957e3030428c8e09fd0b1a"

  on_arm do
    version "2.7-alpha-390-g9e81814bbf"
  end
  on_intel do
    version "2.7-alpha-390-g9e81814bbf"
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
