cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "382b945cac918265e308edec1285579a8eab6797b191eba58a45f34e61d56400",
         intel: "3b144b8bdfce687ef2a29d1d232452f33e3efb7e531b37ea68ec2912367c30c5"

  on_arm do
    version "2.7-alpha-355-g60ed96ff51"
  end
  on_intel do
    version "2.7-alpha-355-g60ed96ff51"
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
