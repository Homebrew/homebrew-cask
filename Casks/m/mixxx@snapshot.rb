cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "2c8bd5c80959725ca2de4ec3cd12f4752b64ff279ddf074a25d9c81b83f3f552",
         intel: "872c27e159fd8044a6d8b8575084e7a0f30b6e86b84e33a312e050f808350a40"

  on_arm do
    version "2.7-alpha-437-g64c1cbec91"
  end
  on_intel do
    version "2.7-alpha-437-g64c1cbec91"
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
