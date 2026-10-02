cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "4cc9c1bb5c1185cb163656742935b9d4f3dec899badaffeaba9973ae9f167d7d",
         intel: "e1b6b87ee1a2d9e1e702f70249e61a2bf969e7ee1b6ebdec3bfbf3f8bed4eaed"

  on_arm do
    version "2.7-alpha-411-g2d5374fb64"
  end
  on_intel do
    version "2.7-alpha-411-g2d5374fb64"
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
