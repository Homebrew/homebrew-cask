cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "c292977c49635b285a7c8c689afb76eb0081e1b1c6e5594f59a94d51c283f5c1",
         intel: "803b18f42e60e41d33d144f71de8bd7e1b29e02da2008d51de239316c3cb5161"

  on_arm do
    version "2.7-alpha-314-ge7ed05b2fd"
  end
  on_intel do
    version "2.7-alpha-314-ge7ed05b2fd"
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
