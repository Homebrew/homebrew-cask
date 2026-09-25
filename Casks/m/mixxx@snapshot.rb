cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "c26b0dde372e175b8eea381d397a4d7dbc03bd2afb798f77dd69232fed37d8f8",
         intel: "47dc2796de3d5e8ccb5298b90f83389a4347f9001e86f6272625bb74ca57794a"

  on_arm do
    version "2.7-alpha-405-gbcfb795631"
  end
  on_intel do
    version "2.7-alpha-405-gbcfb795631"
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
