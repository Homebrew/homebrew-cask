cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "9699eb8d53f17453460d83a0fe7d4a644b38437b25ad509ed6a0cae8db091031",
         intel: "e55c35dc2428ac1ba1f5b8e751b710304187cf83ce611fc6e966a1fef5dfb012"

  on_arm do
    version "2.7-alpha-386-g47c933d899"
  end
  on_intel do
    version "2.7-alpha-386-g47c933d899"
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
