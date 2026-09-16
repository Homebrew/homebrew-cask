cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "edb9a8f5d0e0f0bd40607506d8f7462715eb68ace7790064d611b30490670f45",
         intel: "7533e5523fb6ebe48307adc56081943d7318a09701f5aedaa9229d7c39392501"

  on_arm do
    version "2.7-alpha-395-g513ede7139"
  end
  on_intel do
    version "2.7-alpha-395-g513ede7139"
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
