cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "8a5ed8069f1ee4f62c5f03fa7f692017a4148d952b7ff2ae6d013c18e75fce14",
         intel: "473f603044ad4c67141bf63fb870c1f717122f29c0063f21237bfb5274f3996a"

  on_arm do
    version "2.7-alpha-325-gcad6179f05"
  end
  on_intel do
    version "2.7-alpha-325-gcad6179f05"
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
