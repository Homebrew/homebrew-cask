cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "4a956f46623b171d21e328d3c547177b7afd21b5b31bf9ef6ed6a08294368504",
         intel: "5ae5a1fe6eb61bb7cb455c950338a755a83a6ea03ca59f0390a846fe10f54c22"

  on_arm do
    version "2.7-alpha-430-g2086fe0e55"
  end
  on_intel do
    version "2.7-alpha-430-g2086fe0e55"
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
