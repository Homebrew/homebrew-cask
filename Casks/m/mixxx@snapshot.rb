cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  on_arm do
    version "2.6-alpha-217-ga9d047b0e5"
    sha256 "2fb4324f21f463fb8698cbd5df0f0624f9603bfa6f517f00fbdabc5c13a4e74a"
  end
  on_intel do
    version "2.6-alpha-217-ga9d047b0e5"
    sha256 "2b876a9cab37bd0cddaf67fe2a05551ec5ab528fb65a878d6f3c54291a020652"
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
