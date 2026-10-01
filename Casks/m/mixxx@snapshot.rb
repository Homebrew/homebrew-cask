cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "e27c3e7f0f276d6cd02c59e84bbf36d62184f1bd777af5a82f5ea90ed9578c1f",
         intel: "a5de46773b8439af864d6de20c23f94cf7332c5486173502e01574b916e5dd2e"

  on_arm do
    version "2.7-alpha-409-g414699c2f0"
  end
  on_intel do
    version "2.7-alpha-409-g414699c2f0"
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
