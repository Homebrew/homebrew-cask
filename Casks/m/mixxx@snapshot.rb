cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "26ac3d459aa922c725f219199d515d6930f10d2bd4faf407c3edf8a69e63966a",
         intel: "6e67a1b83276b7940ee33fe7b8a3880d161061776eb367517f5d61bd061a9b25"

  on_arm do
    version "2.7-alpha-361-g5b0dfe5df6"
  end
  on_intel do
    version "2.7-alpha-361-g5b0dfe5df6"
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
