cask "mixxx" do
  arch arm: "arm", intel: "intel"

  version "2.4.1"
  sha256 arm:   "c9ad0bd7c02ac02a70d1d36a30f197945bdde2073b5dbf1e67badb310e3abd95",
         intel: "b4d43050b9462b510218c75a730e8c46f059ed9d723caf7fedae469e519d1c7e"

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
