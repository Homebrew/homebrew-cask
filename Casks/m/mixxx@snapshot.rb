cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  version "2.7-alpha-61-g4a225f9573"
  sha256 arm:   "b256cb5bc7ad276cd61cf9cb9d6c18b1250b0c6e4cfb13a81941a46c45499e34",
         intel: "0610f54f9608f3e1f6188c8f2b718fb25f1ae594f4af2bc935e8d4df1312d77c"

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
