cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "61336068374aa708e4bfd93fe6a2a8884dd495dcaeb57efa47a7ce8f8d96ec4d",
         intel: "17b8ba292304ce41505a1da265ee836bcdf9828d68ed7bb69099f52258e1ac80"

  on_arm do
    version "2.7-alpha-413-g75acec85f7"
  end
  on_intel do
    version "2.7-alpha-413-g75acec85f7"
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
