cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "3b8dd5c3b3baaf314a55656428df62f97971b5e8dad8f1b510a34ffea1fc2a30",
         intel: "0788cc0b8b312d2627f2d2dbc94b5051bedd72efbdf087f75b4eee9de2c4a849"

  on_arm do
    version "2.7-alpha-353-g6f831813c9"
  end
  on_intel do
    version "2.7-alpha-353-g6f831813c9"
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
