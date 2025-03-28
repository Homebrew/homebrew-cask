cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  version "2.6-alpha-278-g04b5ba249c"
  sha256 arm:   "86deed995ba38c4838043ba4ca9e0acc112f667d78bf95f75d0d320aa84ae8b3",
         intel: "c53a8085c5ae08a7f70a14828e2eb8b8e9c9c203f4063922fa7f84cc9c639586"

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
