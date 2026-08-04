cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "d8da8e736fe794beef5c19b27c46aaece9abe42e9d471d54905785a24eb2c9bf",
         intel: "6b46b1967dd40f865bb0cbfe80a37b1cd3ae1c9f1a3a76b9f8a59b69e1d7ba35"

  on_arm do
    version "2.7-alpha-340-gbcacd6ecb4"
  end
  on_intel do
    version "2.7-alpha-339-g14f3ccaaf3"
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
