cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "f6db11e4fcb6171f3f9fe226b0274ee515703215a35c64d0e82413e4b3d44ba9",
         intel: "cc50c5205b4ea7ce8152dc0a5b002f60ca02d1258b01f917bbb09262084f54f3"

  on_arm do
    version "2.7-alpha-401-gb29d5f89cf"
  end
  on_intel do
    version "2.7-alpha-401-gb29d5f89cf"
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
