cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "e7aa8e541738a274c43bac5eb73edd5f6ff593e413ec55515bac4551efe350a2",
         intel: "57b0411ecf72b23f5fbddc8df82279ddb885798f8578770ea6205ab09e366759"

  on_arm do
    version "2.7-alpha-399-g89492d5aaa"
  end
  on_intel do
    version "2.7-alpha-399-g89492d5aaa"
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
