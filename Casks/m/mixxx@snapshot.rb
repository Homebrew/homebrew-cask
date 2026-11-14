cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "7f5ee0f93df72f29e2d656caad26d41d6a00f25e75f355e7b9fa3dec1f29e48f",
         intel: "ef3d44814917d5cd09ce302daf3ff64748b7c4c7c27fdd9cd1cf0c18511a974b"

  on_arm do
    version "2.7-alpha-441-g2a97ac974f"
  end
  on_intel do
    version "2.7-alpha-441-g2a97ac974f"
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
