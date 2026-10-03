cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "8a9bc946b0968d2738f00b39203f749d21f82cd479fed810d9e2962bf1d9cfb1",
         intel: "47bc086beaa617f45a74eed815011c90b08c6d845ad7b34a94c4d70e0833d7f6"

  on_arm do
    version "2.7-alpha-415-g332b8026fb"
  end
  on_intel do
    version "2.7-alpha-415-g332b8026fb"
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
