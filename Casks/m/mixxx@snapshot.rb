cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "23740ed712029e8e058a8718c9c7da5e14f0f53c7c2cedac20193be931e81adc",
         intel: "1a7ae7202a9488f8afa686bbe20c68d3e03695da2307aee6c1c8b107c18e0acf"

  on_arm do
    version "2.7-alpha-418-g31b8ffad5d"
  end
  on_intel do
    version "2.7-alpha-418-g31b8ffad5d"
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
