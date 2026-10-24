cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "fb6a92fb2a52bc399b0e557d1f483ccd13f585af6777462d6f4cff22762e962c",
         intel: "8d24510a1cb0833d35eaf1a5ecc2340392aaf0118ec75a00a4be1eafc0aef4eb"

  on_arm do
    version "2.7-alpha-431-g2f4234b03f"
  end
  on_intel do
    version "2.7-alpha-431-g2f4234b03f"
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
