cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "0d9479f718a3c62b21b31c2d56133339080e9c7aa884c176c965ef12d588906e",
         intel: "a9bd57dba129f455ea19ee768d219ac040895ca4bd9afbd0c3e7d94e09deb2f2"

  on_arm do
    version "2.7-alpha-404-g87ba13b2bb"
  end
  on_intel do
    version "2.7-alpha-404-g87ba13b2bb"
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
