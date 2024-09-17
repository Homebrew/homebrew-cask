cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  on_arm do
    version "2.6-alpha-88-g6b4a6f9bfd"
    sha256 "144efa9d88cbc381ddde06cfa5d638556e20614597eb3747563bc49e1cd16ca5"
  end
  on_intel do
    version "2.6-alpha-88-g6b4a6f9bfd"
    sha256 "e16a8732a017e931e03c5bf0a6cd4bd666a08ace3b0f675d645a74fc1444ecdc"
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
