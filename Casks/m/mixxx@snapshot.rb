cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "02bdd18ad540b530725241e3c288ed082cc9437210b80018f8bd3cd61aed923e",
         intel: "6118403f4ebc7c66d5f7d1ddef8642575c7ba97b7fb04637cace27cdbd5ead77"

  on_arm do
    version "2.7-alpha-422-g3a4f2a56c2"
  end
  on_intel do
    version "2.7-alpha-422-g3a4f2a56c2"
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
