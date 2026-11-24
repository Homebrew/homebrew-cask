cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "3f31a28a3aa6e85d5d9f4f578c1b8c8d3e85e62f4d99479bdd0959c28c6353b0",
         intel: "b73daef1c4a4872ac985957200860f84038dc3fbda6ca9cf1d07c07e226a79a6"

  on_arm do
    version "2.7-alpha-446-g9b38fdab90"
  end
  on_intel do
    version "2.7-alpha-446-g9b38fdab90"
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
