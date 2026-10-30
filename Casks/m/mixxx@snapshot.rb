cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "ff1dd6bb95eb38e391d2be007022872c4f76daadee1d3698228b6966116ed297",
         intel: "2649d255d0f50f0e90c7360b67a023783b8859958780a0998127f84c8dc987c3"

  on_arm do
    version "2.7-alpha-435-gbc49961fd3"
  end
  on_intel do
    version "2.7-alpha-435-gbc49961fd3"
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
