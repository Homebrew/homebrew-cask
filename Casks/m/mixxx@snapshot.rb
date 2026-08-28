cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "c3ed6315f9a2f33daa72a8e72731f68f612b2d1a4d75da68e085fdd5f0279309",
         intel: "7169ec5dacf8d794d9814b30df7aadb5353a1ed24c3fe978b9f169d39182b033"

  on_arm do
    version "2.7-alpha-370-g5f09f22cb7"
  end
  on_intel do
    version "2.7-alpha-370-g5f09f22cb7"
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
