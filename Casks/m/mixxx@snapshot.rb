cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "37c2a6e9105bd21e99e515e49f9cf24f3de8134b1e9d310aaf90b8cc8468bc04",
         intel: "17335dda68e3766174d3a6077da365c51309690bb2f05cdc5d2f6d305495cdf6"

  on_arm do
    version "2.7-alpha-377-g61a1862312"
  end
  on_intel do
    version "2.7-alpha-377-g61a1862312"
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
  depends_on macos: :big_sur

  app "Mixxx.app"

  zap trash: [
    "~/Library/Application Scripts/org.mixxx.mixxx",
    "~/Library/Containers/org.mixxx.mixxx",
    "~/Music/Mixxx",
  ]
end
