cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "d3e428815b8788e8fe2e1537996d7e32499f7a1546395ca0b48fdf958311efaa",
         intel: "b62a8a547957ec816415aecfcbeeabe6f7edfe771dbac075f5791d2a9d936293"

  on_arm do
    version "2.7-alpha-371-g7a692f393b"
  end
  on_intel do
    version "2.7-alpha-371-g7a692f393b"
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
