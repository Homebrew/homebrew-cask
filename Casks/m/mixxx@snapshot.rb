cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  version "2.6-alpha-21-ga48562ad96"
  sha256 arm:   "1437171d62a92b8a2c81638e3270c9875d5a2994b6d4147085efdfeb84ddfba6",
         intel: "648f12c477143d72586445a6c5ebfcfca1849e425622b64b7b0887ffd22bcac5"

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
