cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "aaa18f05adc0d316954749481ff0a6e5a7ac4b18cb7d2a975906ea4597a510af",
         intel: "c56e20cf88b56e827118f7250ec0065ae1960dda8d2b2cc5c1b4a68c5ddbc85b"

  on_arm do
    version "2.7-alpha-425-gb02e84aa4c"
  end
  on_intel do
    version "2.7-alpha-425-gb02e84aa4c"
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
