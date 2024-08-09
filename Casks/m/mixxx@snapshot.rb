cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  version "2.6-alpha-58-g738f1020c8"
  sha256 arm:   "013f06da9f91779b353f1cfac2b70c128b0a9c00347ddcc20d1a031798d28f99",
         intel: "a8e63029efd9488162edeb424fe3dc204b3ec5d683b6916379df3d8a4d4a1edf"

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
