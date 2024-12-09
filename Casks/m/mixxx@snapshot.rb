cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  on_arm do
    version "2.6-alpha-147-g3ce3421e3f"
    sha256 "e1cdf67c9cdc2b8004a0ebf3750f5449b15c14a889d0773b88d171be063dec8d"
  end
  on_intel do
    version "2.6-alpha-147-g3ce3421e3f"
    sha256 "a79fa6626c1912232527a6dcda46a690cb71c00d9ab4db57e5dc73543c44088a"
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
  depends_on macos: ">= :catalina"

  app "Mixxx.app"

  zap trash: [
    "~/Library/Application Scripts/org.mixxx.mixxx",
    "~/Library/Containers/org.mixxx.mixxx",
    "~/Music/Mixxx",
  ]
end
