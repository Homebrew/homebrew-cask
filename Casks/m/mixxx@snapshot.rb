cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "2a6786cc7f7bdb301d18677094aa786091a4d904ca1ed8adbee341682481efed",
         intel: "21c357f004568713a12853ed37449179b7f65217cfae0173a896912820574409"

  on_arm do
    version "2.7-alpha-364-gcca09c92f4"
  end
  on_intel do
    version "2.7-alpha-364-gcca09c92f4"
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
