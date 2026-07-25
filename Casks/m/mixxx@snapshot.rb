cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "43edf1fc1fae452a471a1ffe944ba5e73a2621d55ce7fb36a887e8f423165409",
         intel: "9cbdc03da656bdfc8910b3834d4374fdbfc5d1f7ba2e916532e41f64e41af4aa"

  on_arm do
    version "2.7-alpha-326-g66f7912343"
  end
  on_intel do
    version "2.7-alpha-326-g66f7912343"
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
