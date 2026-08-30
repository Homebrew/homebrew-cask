cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "41caeaf23f8448be5fe4979cc53def029def236dc1c829062aea0abe4b1a4f90",
         intel: "7ef6e5212df2c02ce275a5110620f48d52d6168c8017007fefbf7f293f78c743"

  on_arm do
    version "2.7-alpha-372-g4e34154f92"
  end
  on_intel do
    version "2.7-alpha-372-g4e34154f92"
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
