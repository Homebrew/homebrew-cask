cask "mixxx" do
  arch arm: "arm", intel: "intel"

  version "2.5.2"
  sha256 arm:   "f5762c6408216acd930f908e25ede0189560ba4e76fe1315f5d97a42dce9ad31",
         intel: "14e9b560fffa8f42cf385eddffa4226bfd5f7d0945ad1ed8d063834db10a6290"

  url "https://downloads.mixxx.org/releases/#{version}/mixxx-#{version}-macos#{arch}.dmg"
  name "Mixxx"
  desc "Open-source DJ software"
  homepage "https://www.mixxx.org/"

  livecheck do
    url "https://mixxx.org/download/"
    regex(%r{href=.*?/mixxx[._-]v?(\d+(?:\.\d+)+)[._-]macos#{arch}\.dmg}i)
  end

  conflicts_with cask: "mixxx@snapshot"
  depends_on macos: ">= :catalina"

  app "Mixxx.app"

  zap trash: [
    "~/Library/Application Scripts/org.mixxx.mixxx",
    "~/Library/Containers/org.mixxx.mixxx",
    "~/Music/Mixxx",
  ]
end
