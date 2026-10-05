cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "1da15b6f0ccaf318dfdbf45f849db873140a44ec31ad62fde16e5a733ac6329b",
         intel: "9b54a8d5dcf0d3eab69247d324e42c6bfceb55bf5309b9dd6aa66f05f368d050"

  on_arm do
    version "2.7-alpha-419-g08a65c6d87"
  end
  on_intel do
    version "2.7-alpha-419-g08a65c6d87"
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
