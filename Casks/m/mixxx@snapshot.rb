cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "7119f7f13cdcb070dba0003097705caa3213b6c340eae3a50c0e6bccf2a6360f",
         intel: "cd64c2fd9bb80108728e855354ae054351a2c1dd24b0c3ebbc782d19aba53c68"

  on_arm do
    version "2.7-alpha-427-g0fffd3d0d0"
  end
  on_intel do
    version "2.7-alpha-427-g0fffd3d0d0"
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
