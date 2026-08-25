cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "ce8ee04917fb467cbff0f96a2698bcccb7a11c9f7e8f71f67e826a1972af7c80",
         intel: "2f71d194dd92f5762a63f166fe911fd80fbf5298452536a3e76594991f6ce0c6"

  on_arm do
    version "2.7-alpha-360-g6d6229c0dd"
  end
  on_intel do
    version "2.7-alpha-360-g6d6229c0dd"
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
