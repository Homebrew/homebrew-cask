cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  on_arm do
    version "2.6-alpha-192-gf54d3f69fe"
    sha256 "a00ff651bbcd463bd8ccdd2795219183fb1ed5b5158f05723987e0131869e060"
  end
  on_intel do
    version "2.6-alpha-192-gf54d3f69fe"
    sha256 "43dca86abbc88ddd3ba24d8e09771206f628768cad27d95b24fc620c4ae67ad7"
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
