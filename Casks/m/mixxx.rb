cask "mixxx" do
  version "2.3.6"
  sha256 "f7b2bacb7fefd617b126d8ffa9feb7d26d445f7347cc9a24701e86c17cb174b6"

  url "https://downloads.mixxx.org/releases/#{version}/mixxx-#{version}-macosintel.dmg"
  name "Mixxx"
  desc "Open-source DJ software"
  homepage "https://www.mixxx.org/"

  livecheck do
    url "https://mixxx.org/download/"
    regex(%r{href=.*?/mixxx[._-]v?(\d+(?:\.\d+)+)[._-]macos(?:intel|arm)\.dmg}i)
  end

  conflicts_with cask: "homebrew/cask-versions/mixxx-snapshot"

  app "Mixxx.app"

  zap trash: [
    "~/Library/Application Scripts/org.mixxx.mixxx",
    "~/Library/Containers/org.mixxx.mixxx",
    "~/Music/Mixxx",
  ]
end
