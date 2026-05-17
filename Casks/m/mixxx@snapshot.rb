cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  version "2.7-alpha-258-gd37fd75edb"
  sha256 arm:   "57e51cfda935b0be7d209bb49d39b3d95952b0276036800638cd31c74ede2674",
         intel: "f787ac27a45f4acc3fc861d99b88849c522788a4397d4019f7d9ac5020bfcb6f"

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
