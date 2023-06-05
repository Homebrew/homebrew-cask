cask "mixxx" do
  version "2.3.5"
  sha256 "eaabbec39c44e30aaa86840eae5f47ad503b0e87007c5005e6e12a175bc20ccb"

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
