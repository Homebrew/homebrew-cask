cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  on_arm do
    version "2.6-alpha-194-g45cfe5daa6"
    sha256 "08531c4b2c06f5eed5740ad40ea24a0f6ba88d56d89be4c916137cb4d0412bb6"
  end
  on_intel do
    version "2.6-alpha-194-g45cfe5daa6"
    sha256 "ebd5206d3556a79bec9878d6b16b20d2ad17addac81a85ba9ef760651ad26106"
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
