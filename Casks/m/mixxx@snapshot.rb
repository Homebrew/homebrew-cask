cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "a704fe39dc453b48ff8f1c933f3a58a282402eb86098b08cd824223dcb9437a8",
         intel: "eb4c2f85d87a39a23de67e2a385b1f44a733f5aa2d9b4c589ff67810b10e3b56"

  on_arm do
    version "2.7-alpha-433-g39cfe6ab8f"
  end
  on_intel do
    version "2.7-alpha-433-g39cfe6ab8f"
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
