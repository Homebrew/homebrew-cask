cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "c12fea6ebe97d21f3c8853de18b93f421678bf53e38198b4fea32c365d84c7fe",
         intel: "00630fd55b563fa4ad29624231925f360797b402f1b127b3a1c2277ccc6dff08"

  on_arm do
    version "2.7-alpha-449-gf2cad3dca0"
  end
  on_intel do
    version "2.7-alpha-449-gf2cad3dca0"
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
