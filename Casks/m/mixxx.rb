cask "mixxx" do
  version "2.4.0"
  sha256 "7a05b1765a0e0a22427eca811f070903a5fadfced53a5ec004815cc17d9b5f21"

  url "https://downloads.mixxx.org/releases/#{version}/mixxx-#{version}-macosintel.dmg"
  name "Mixxx"
  desc "Open-source DJ software"
  homepage "https://www.mixxx.org/"

  livecheck do
    url "https://mixxx.org/download/"
    regex(%r{href=.*?/mixxx[._-]v?(\d+(?:\.\d+)+)[._-]macos(?:intel|arm)\.dmg}i)
  end

  conflicts_with cask: "mixxx-snapshot"

  app "Mixxx.app"

  zap trash: [
    "~/Library/Application Scripts/org.mixxx.mixxx",
    "~/Library/Containers/org.mixxx.mixxx",
    "~/Music/Mixxx",
  ]
end
