cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "3cf709bf874721521cc9d4beaf667d07f85ac7938124cbf7c10c0e074b43af69",
         intel: "926e78ac27e0d5862e43e870f8f0045da122f4ef6a3c9edf5f58797dfe02c310"

  on_arm do
    version "2.7-alpha-394-g6ff4e36eec"
  end
  on_intel do
    version "2.7-alpha-394-g6ff4e36eec"
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
