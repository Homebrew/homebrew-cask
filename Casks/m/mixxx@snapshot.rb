cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "def3dd85c03ecfbafd1cecee6aa939cfd20535f5fee81be7f2fcb997410a9aac",
         intel: "c8523e37c3f171b71ab872d5338e80872ca6fbf221bd199461a70dae054d2bbf"

  on_arm do
    version "2.7-alpha-379-gf0d1dd38d5"
  end
  on_intel do
    version "2.7-alpha-379-gf0d1dd38d5"
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
