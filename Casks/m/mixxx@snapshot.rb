cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  version "2.6-alpha-253-g68d3796d1d"
  sha256 arm:   "6666f3418feaa2e395838f8535912c8249675bc43c4b467a77a549625f4f1104",
         intel: "ffa3addafa0dab9c376b74e799ab1a028af0e849c2904beb36785417a30106d0"

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
  depends_on macos: ">= :catalina"

  app "Mixxx.app"

  zap trash: [
    "~/Library/Application Scripts/org.mixxx.mixxx",
    "~/Library/Containers/org.mixxx.mixxx",
    "~/Music/Mixxx",
  ]
end
