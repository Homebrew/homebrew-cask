cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "eaecfccba2b800b857b6328c536a303127f65310fbb1b165d2281a833e000241",
         intel: "aedbf8fcc5fdc120add06290c24bdfd3d152e45db947332949462518eb2ebd9d"

  on_arm do
    version "2.7-alpha-429-g300bd8967c"
  end
  on_intel do
    version "2.7-alpha-429-g300bd8967c"
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
