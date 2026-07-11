cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "f8a1d2860d0ef24a27e9be8dd9882031724060dc01d9c549973ef6e2e035f67d",
         intel: "15831dd894f956124f7da4b300469e60f8354ad0640484d87b171ff70e5e0ea2"

  on_arm do
    version "2.7-alpha-320-gf4c4424c74"
  end
  on_intel do
    version "2.7-alpha-320-gf4c4424c74"
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
