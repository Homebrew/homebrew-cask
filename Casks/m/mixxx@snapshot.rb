cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "e9bdc7518f594f44e11ec7b9c75648f46d24769c11255066b471b5d05c50a168",
         intel: "9b70a34f1a0f10fbbd8094abaf0ef98c030483a3c4dc2ea4630a68c5a1feb8bd"

  on_arm do
    version "2.7-alpha-332-g58aa9e3518"
  end
  on_intel do
    version "2.7-alpha-332-g58aa9e3518"
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
