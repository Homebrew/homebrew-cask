cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "b0908ccccb45cf5f0b98a08ccb52201ef029c104b07040226b32a45bf584ae28",
         intel: "dc8647ef67be38994aecf07d19dbbeafe5f866814b4da8e427ed69474b04808b"

  on_arm do
    version "2.7-alpha-354-g86126792a3"
  end
  on_intel do
    version "2.7-alpha-354-g86126792a3"
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
