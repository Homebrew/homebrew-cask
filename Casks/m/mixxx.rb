cask "mixxx" do
  arch arm: "arm", intel: "intel"

  version "2.5.6"
  sha256 arm:   "f724cd8b0048a60963f11694acbffb2438a89c1cf732117559ac3031f8486e27",
         intel: "2a4bfc0c5813edd6acdf042b519a8d81f414e44b03490e5a5faee2e28bcaa450"

  url "https://downloads.mixxx.org/releases/#{version}/mixxx-#{version}-macos#{arch}.dmg"
  name "Mixxx"
  desc "Open-source DJ software"
  homepage "https://www.mixxx.org/"

  livecheck do
    url "https://mixxx.org/download/"
    regex(%r{href=.*?/mixxx[._-]v?(\d+(?:\.\d+)+)[._-]macos#{arch}\.dmg}i)
  end

  conflicts_with cask: "mixxx@snapshot"
  depends_on macos: ">= :big_sur"

  app "Mixxx.app"

  zap trash: [
    "~/Library/Application Scripts/org.mixxx.mixxx",
    "~/Library/Containers/org.mixxx.mixxx",
    "~/Music/Mixxx",
  ]
end
