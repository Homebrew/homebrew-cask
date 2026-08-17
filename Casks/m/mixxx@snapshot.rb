cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "f4a621394ab054a7d01d6050137924be23efe0fc7215014ccc4bcff0ead8d5ff",
         intel: "428b6a5f863ec01ff6c64051ac02f49ee0ff3ffc23be548dac40092edba7d1c4"

  on_arm do
    version "2.7-alpha-352-g97d4c7b694"
  end
  on_intel do
    version "2.7-alpha-352-g97d4c7b694"
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
