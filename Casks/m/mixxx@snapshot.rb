cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "2c19f9608f9f36dd2889e1557cb3c38271b5aad63ee63d1e8410d13782c1bae6",
         intel: "04ce8379098904a58fb5db2d0b2934fc01f7504617f6a0cbe4b152f87d9551a0"

  on_arm do
    version "2.7-alpha-334-gc6512c3c01"
  end
  on_intel do
    version "2.7-alpha-334-gc6512c3c01"
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
