cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "eaee12c29ecb96796baee65dd070b3425aac6dc4ae475acc037a6dd0ca96eaab",
         intel: "1b9e8fc48ae5b56629956a87a98bb9937be876f00fb8c237a810b120479a261d"

  on_arm do
    version "2.7-alpha-316-gf834416fa3"
  end
  on_intel do
    version "2.7-alpha-316-gf834416fa3"
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
