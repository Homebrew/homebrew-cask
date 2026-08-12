cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "3d733b9d70f933f4435871e8b94ae0cfd6de7fa780edb67569aeed1e83d7057d",
         intel: "d1682de90e0edded974c87992ffe01d9c6aeca45ae8c5869b6359fb7271f76de"

  on_arm do
    version "2.7-alpha-348-g0e88a215af"
  end
  on_intel do
    version "2.7-alpha-348-g0e88a215af"
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
