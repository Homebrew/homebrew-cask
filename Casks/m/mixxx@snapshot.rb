cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "fc18d3fba4a998b338ec4b3d3eae3da873c9a719404083e063dc9b15781e4e0c",
         intel: "1c55b67bd414e63f3125eff06704855afc2dd08e6234eef89af5e4f5d6a294f0"

  on_arm do
    version "2.7-alpha-423-gb5bb2e13f1"
  end
  on_intel do
    version "2.7-alpha-423-gb5bb2e13f1"
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
