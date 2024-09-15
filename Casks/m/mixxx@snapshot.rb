cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  on_arm do
    version "2.6-alpha-85-g1296cdf409"
    sha256 "5f5ff36920e2502fb383d785b8d777ed7162af868d00f7b5dba8860a161da397"
  end
  on_intel do
    version "2.6-alpha-85-g1296cdf409"
    sha256 "de381852209bb2de1cb5f592eae1f9da27d835c52ac6c435eb0f90ce713f2a18"
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
