cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "7556ca2c434be8ff90c9e38795cb0ebd068bb2e1154ec04c649cac7b1876869d",
         intel: "d059e2719d9c47ecea263793d3f9f080af031fffd3f0b1cbc6d5fc4f9dc5756c"

  on_arm do
    version "2.7-alpha-323-g1788945bc9"
  end
  on_intel do
    version "2.7-alpha-323-g1788945bc9"
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
