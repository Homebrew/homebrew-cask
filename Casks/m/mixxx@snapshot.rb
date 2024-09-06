cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  on_arm do
    version "2.6-alpha-84-g8790b5fbf2"
    sha256 "f87c2751bb00b6c403bcc018ffab1123ac1d4feb3a1fa7f969a134844bd0b477"
  end
  on_intel do
    version "2.6-alpha-84-g8790b5fbf2"
    sha256 "5089ab92ffd7d8c18fb2e0b44903c46aa33d16a76f61f0ffd13d0e551bb37db9"
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
