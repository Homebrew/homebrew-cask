cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  on_arm do
    version "2.6-alpha-226-g59a9b85d9a"
    sha256 "81a9edb96f5bfab12d36c1af0c2b3c2f172ad2b64ab49ea02ebf1361e4b34e2a"
  end
  on_intel do
    version "2.6-alpha-226-g59a9b85d9a"
    sha256 "f3d499f11a1a48fb8d927e1d709ba72c9f80ec8309a7f2c93a9100b05941094d"
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
