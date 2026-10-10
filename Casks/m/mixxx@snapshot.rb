cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "2381dedae9546d7a4581a373dab3efe25e7b6ab30e072f154d999151c0afa66f",
         intel: "96f27ef9222160802cb53b54902df15699a8cff0264c59e4d82ba96c10b84447"

  on_arm do
    version "2.7-alpha-426-gf83c636a87"
  end
  on_intel do
    version "2.7-alpha-426-gf83c636a87"
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
