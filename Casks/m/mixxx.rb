cask "mixxx" do
  arch arm: "arm", intel: "intel"

  version "2.5.0"
  sha256 arm:   "4d643b63af52bb23746bd4f47612899d7eef9a4b0d88e20888f1c07c63bfc4ba",
         intel: "9ca2e2852cb8a268771d23843dc033dde0da8f6e90ddcb95ded2756eeababda6"

  url "https://downloads.mixxx.org/releases/#{version}/mixxx-#{version}-macos#{arch}.dmg"
  name "Mixxx"
  desc "Open-source DJ software"
  homepage "https://www.mixxx.org/"

  livecheck do
    url "https://mixxx.org/download/"
    regex(%r{href=.*?/mixxx[._-]v?(\d+(?:\.\d+)+)[._-]macos#{arch}\.dmg}i)
  end

  conflicts_with cask: "mixxx@snapshot"
  depends_on macos: ">= :catalina"

  app "Mixxx.app"

  zap trash: [
    "~/Library/Application Scripts/org.mixxx.mixxx",
    "~/Library/Containers/org.mixxx.mixxx",
    "~/Music/Mixxx",
  ]
end
