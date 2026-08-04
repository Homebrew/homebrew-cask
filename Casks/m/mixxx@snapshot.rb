cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "d8da8e736fe794beef5c19b27c46aaece9abe42e9d471d54905785a24eb2c9bf",
         intel: "20201a1ffdf1a952216cb9e164fe0d1ea770482210cb6611b85b14461832f6a0"

  on_arm do
    version "2.7-alpha-340-gbcacd6ecb4"
  end
  on_intel do
    version "2.7-alpha-340-gbcacd6ecb4"
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
