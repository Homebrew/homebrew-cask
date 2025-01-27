cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  on_arm do
    version "2.6-alpha-188-g59ff24b2a4"
    sha256 "6b66fce1ee2ff6c3798e8f64f7865314e3e8eb98642e0c8e6ad1d32d26a05433"
  end
  on_intel do
    version "2.6-alpha-188-g59ff24b2a4"
    sha256 "f5ced9cf1cabb923deb0f1272f2dfa16f7174cdcaa8ac0e18ed49678f9804e43"
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
