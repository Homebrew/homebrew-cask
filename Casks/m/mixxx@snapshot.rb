cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "eb97bee67053617179fced842a83995273b7d2086a617b5d4b2c7b8f0c7aad32",
         intel: "e0d88d7191187c7af6fd4c675e0966ab2b42a42041f4f4a382acab76cdfed630"

  on_arm do
    version "2.7-alpha-345-g993a9724b4"
  end
  on_intel do
    version "2.7-alpha-345-g993a9724b4"
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
  depends_on macos: :big_sur

  app "Mixxx.app"

  zap trash: [
    "~/Library/Application Scripts/org.mixxx.mixxx",
    "~/Library/Containers/org.mixxx.mixxx",
    "~/Music/Mixxx",
  ]
end
