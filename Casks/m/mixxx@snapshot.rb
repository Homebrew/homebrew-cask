cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "42861c02f672d7d24266cf705e8b849c556a6f4a9e69707e5de6d1f874d5892b",
         intel: "ea33c6a604eb602362b977dc548db6388df6581fd4a970ce21b1d35e7304ef13"

  on_arm do
    version "2.7-alpha-358-gf471ae6da3"
  end
  on_intel do
    version "2.7-alpha-358-gf471ae6da3"
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
