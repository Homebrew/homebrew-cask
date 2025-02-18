cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  on_arm do
    version "2.6-alpha-240-g17b3b27c94"
    sha256 "dc18dfef37e33cc70eddfbbaa8d7b64febcbee646b32ded6f057e2db61107667"
  end
  on_intel do
    version "2.6-alpha-240-g17b3b27c94"
    sha256 "8b2246df0b99b9700cd5ff6a5b2cbca5b7c32162aa709bd51b5b56ce1cf51ecf"
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
