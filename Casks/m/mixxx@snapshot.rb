cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  on_arm do
    version "2.6-alpha-109-g34dde6fc7a"
    sha256 "df96a61fe8532b5c7f1ea4c69a8a23da945ba88e44078702e4171ee0300ce71c"
  end
  on_intel do
    version "2.6-alpha-109-g34dde6fc7a"
    sha256 "b1b0dd8ef5d167ddb6411cc60082ba3958afe1a45144e70a6f0ec55b3b6af413"
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
