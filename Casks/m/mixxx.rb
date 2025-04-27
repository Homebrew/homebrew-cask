cask "mixxx" do
  arch arm: "arm", intel: "intel"

  version "2.5.1"
  sha256 arm:   "cd463cb4dda40f6cd04674157deb8927a34b74a0d2bcb12957f0e9232144ae44",
         intel: "bc12ac6e51e9d00767271b086f5d253e792a4238de822a174e6c18d932de0657"

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
