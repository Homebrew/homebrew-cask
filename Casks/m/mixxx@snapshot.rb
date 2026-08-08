cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "3aebdeafa1d35090d96ea4528573ad8ee1102a5c5d365033ed01a2db9bc320af",
         intel: "4b3950166e30fc1f30beb88c211f8673c996623007bbe3c3fe6cd90d7af3e624"

  on_arm do
    version "2.7-alpha-346-g17be527d6c"
  end
  on_intel do
    version "2.7-alpha-346-g17be527d6c"
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
