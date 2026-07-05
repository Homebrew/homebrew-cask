cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "92d7c7b3ea53f20f367d6c00ba124c9be2e38dee2febb77f996735cd56c95185",
         intel: "8b785e457d4c3830d0f047171351de2c074b2b9b3c1e21779ee7319f39cf2478"

  on_arm do
    version "2.7-alpha-313-g3f20a7931c"
  end
  on_intel do
    version "2.7-alpha-312-g10f263ac52"
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
