cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "3c576751eeb57243e86602336c4d545892c3742b207f6b8bba3761ac5bc1d6ea",
         intel: "350777ee2415225774bb3c921605358ac9b5877ea0c7e07f11370725bc39fe4a"

  on_arm do
    version "2.7-alpha-443-g4e83647e6f"
  end
  on_intel do
    version "2.7-alpha-443-g4e83647e6f"
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
