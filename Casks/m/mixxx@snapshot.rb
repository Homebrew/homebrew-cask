cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "edd5b3b40604197fc9b9772ffaff0c85b27ddaa9e6d6565516d5a6798950ce42",
         intel: "f705799c12642ba38fe900f41a4b551df1f30b07865bb825f119e97ce2eac220"

  on_arm do
    version "2.7-alpha-333-g2c7b3e9d63"
  end
  on_intel do
    version "2.7-alpha-333-g2c7b3e9d63"
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
