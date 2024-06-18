cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  version "2.6-alpha-20-g331f59fa80"
  sha256 arm:   "f973e9568a73c1b05a5cefa87a95e31e36314779d03591a255852d4cbfa10fcd",
         intel: "89cb85291af9d38a622ab126b36584f2339eda203dda06486b798d19df33ace3"

  on_arm do
    depends_on macos: ">= :big_sur"
  end
  on_intel do
    depends_on macos: ">= :catalina"
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

  app "Mixxx.app"

  zap trash: [
    "~/Library/Application Scripts/org.mixxx.mixxx",
    "~/Library/Containers/org.mixxx.mixxx",
    "~/Music/Mixxx",
  ]
end
