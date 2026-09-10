cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "0aa550b13813f8d36c5284be43ab9a22da7743770fefecfef354cc9fa589ea13",
         intel: "bf8b9c4d8a13d921059884976191189d9fd3009b3624635c9af4ffbb1067698e"

  on_arm do
    version "2.7-alpha-389-g94aefc7d08"
  end
  on_intel do
    version "2.7-alpha-389-g94aefc7d08"
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
  depends_on :macos

  app "Mixxx.app"

  zap trash: [
    "~/Library/Application Scripts/org.mixxx.mixxx",
    "~/Library/Containers/org.mixxx.mixxx",
    "~/Music/Mixxx",
  ]
end
