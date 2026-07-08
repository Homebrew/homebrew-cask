cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "4420fc252d6c356b90ded4f454f0e5da83793fb1acf44d7ab15d75d12297a882",
         intel: "d7c90f42df9ae7e989a0329a19e3fafcd4da8e37d3a04b87e3c1788dde129c37"

  on_arm do
    version "2.7-alpha-318-ge3e1d64947"
  end
  on_intel do
    version "2.7-alpha-318-ge3e1d64947"
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
