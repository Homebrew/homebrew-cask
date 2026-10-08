cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "9b6f30fb4aa10964f9de9bfff8bb1d33032fa3b94b0b4d558f40fb802a3fbee2",
         intel: "b44080d7ae2fc07e164937c2c6225d681c0614b87cea0524cea27c23c417fa80"

  on_arm do
    version "2.7-alpha-424-gf12661e29b"
  end
  on_intel do
    version "2.7-alpha-424-gf12661e29b"
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
