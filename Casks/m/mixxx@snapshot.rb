cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "3adcd02b73079a06598ca18ac6dfa08a099fa1245579e5df34b1b7fcd1e68054",
         intel: "5457f9adbd9f759116165b1e2c91215f55f90453159d1ab325a200a348b0dfb8"

  on_arm do
    version "2.7-alpha-442-gdc4bf99322"
  end
  on_intel do
    version "2.7-alpha-442-gdc4bf99322"
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
