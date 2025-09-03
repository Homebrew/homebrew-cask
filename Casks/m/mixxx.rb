cask "mixxx" do
  arch arm: "arm", intel: "intel"

  version "2.5.3"
  sha256 arm:   "76c062aa41a445f0e1c67423a7679e1c6dc2893bea7d1425087b00744e9ff43e",
         intel: "933d2d7b0d24dbb2b1e1360d62d2b91de26ae44d5cec491b86188ad4210b1bb8"

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
