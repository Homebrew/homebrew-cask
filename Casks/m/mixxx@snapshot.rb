cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "a3c064d8a6d03accef38c0b61e872f8a6c43389d70c2a6dfa1941e6aff3d8243",
         intel: "e36e301b546ad8bfdac462d3721917ec2b7614bd2497ba6411b3eb90b63dbdd4"

  on_arm do
    version "2.7-alpha-408-g53ada03f50"
  end
  on_intel do
    version "2.7-alpha-408-g53ada03f50"
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
