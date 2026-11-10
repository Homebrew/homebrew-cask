cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "0598fe920f960e56c508ff2b4f7498357f0087f7dc1ccdacd5a17e2ad01b3e03",
         intel: "ce2a0410210d0c85f6662ca362fae2ac1d1907d8d48a1705276d5cf316a7fd30"

  on_arm do
    version "2.7-alpha-439-g20f2c218ae"
  end
  on_intel do
    version "2.7-alpha-439-g20f2c218ae"
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
