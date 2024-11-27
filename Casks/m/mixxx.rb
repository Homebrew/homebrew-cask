cask "mixxx" do
  arch arm: "arm", intel: "intel"

  version "2.4.2"
  sha256 arm:   "a5cac975e2c6b3f98d4881404034afcb7ee995cb5f787c314b88795adb130b9c",
         intel: "8b5e5eb9f71fe23ad82aa563b6014c2d4ca6ca72085a913936e996e1bc30038e"

  url "https://downloads.mixxx.org/releases/#{version}/mixxx-#{version}-macos#{arch}.dmg"
  name "Mixxx"
  desc "Open-source DJ software"
  homepage "https://www.mixxx.org/"

  livecheck do
    url "https://mixxx.org/download/"
    regex(%r{href=.*?/mixxx[._-]v?(\d+(?:\.\d+)+)[._-]macos#{arch}\.dmg}i)
  end

  conflicts_with cask: "mixxx@snapshot"
  depends_on macos: ">= :sierra"

  app "Mixxx.app"

  zap trash: [
    "~/Library/Application Scripts/org.mixxx.mixxx",
    "~/Library/Containers/org.mixxx.mixxx",
    "~/Music/Mixxx",
  ]
end
