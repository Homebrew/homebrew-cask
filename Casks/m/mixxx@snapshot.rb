cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "e142b4dc5b9ab3c3cd820fffc132d9ca9d8a088807c63504e80333c4ed6c4bb2",
         intel: "87f321808fe45b8395bbdf069c82c9aac0b6b548103b30b68f135946cadeb923"

  on_arm do
    version "2.7-alpha-373-g24f029569e"
  end
  on_intel do
    version "2.7-alpha-373-g24f029569e"
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
