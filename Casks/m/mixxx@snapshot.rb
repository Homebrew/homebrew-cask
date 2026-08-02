cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "d2369688b06dc3823874e2fdff2d473c734ee63b13c6e95dc47bd2573bb33a2f",
         intel: "f9f866faafe542bc8d1a396a32abaab9fb93ac0e2b85e5902ac648555dfce510"

  on_arm do
    version "2.7-alpha-338-g9f3f5db8a9"
  end
  on_intel do
    version "2.7-alpha-338-g9f3f5db8a9"
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
