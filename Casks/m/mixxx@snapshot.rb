cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  version "2.5-alpha-346-g64f48e834a"
  sha256 arm:   "f3cef71c3d7bc832167250b19dd70207732b454f828d856745586bb6adc735bd",
         intel: "5b6e8c728bbdbe6cceb6934edc8e7e8b00ee4a80a6ebc2461851146aa104ab71"

  on_arm do
    depends_on macos: ">= :big_sur"
  end
  on_intel do
    depends_on macos: ">= :catalina"
  end

  url "https://downloads.mixxx.org/snapshots/main/mixxx-#{version}-macos#{arch}.dmg"
  name "Mixxx"
  desc "Open-source DJ software"
  homepage "https://www.mixxx.org/"

  livecheck do
    url "https://mixxx.org/download/"
    regex(%r{href=.*?/snapshots/main/mixxx[._-]v?(.+)[._-]macos#{arch}\.dmg}i)
  end

  conflicts_with cask: "mixxx"

  app "Mixxx.app"

  zap trash: [
    "~/Library/Application Scripts/org.mixxx.mixxx",
    "~/Library/Containers/org.mixxx.mixxx",
    "~/Music/Mixxx",
  ]
end
