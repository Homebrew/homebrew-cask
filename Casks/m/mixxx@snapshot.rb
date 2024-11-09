cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  on_arm do
    version "2.6-alpha-128-g9bb5d8c396"
    sha256 "aed78cd94a6da35249a8ecab8973659c34bc9b9028c83758d75b0b08e0123d46"
  end
  on_intel do
    version "2.6-alpha-128-g9bb5d8c396"
    sha256 "f2e8e9bed0551283742ec9d551f5904a5fbc2d61c331cfd9fbbfcb1f2c6516b9"
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
