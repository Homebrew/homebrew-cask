cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  version "2.7-alpha-229-g22b830b73b"
  sha256 arm:   "8248520dcb91e6cc11cc4067630ce5d335dd3ed46601977bc6da17271f63f28a",
         intel: "e5f45cc84a4bbd455c31fe59c8b555688a825ecc8aaeff6cda3b7667191c9161"

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
  depends_on macos: ">= :big_sur"

  app "Mixxx.app"

  zap trash: [
    "~/Library/Application Scripts/org.mixxx.mixxx",
    "~/Library/Containers/org.mixxx.mixxx",
    "~/Music/Mixxx",
  ]
end
