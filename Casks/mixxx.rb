cask "mixxx" do
  version "2.3.5"
  sha256 "eaabbec39c44e30aaa86840eae5f47ad503b0e87007c5005e6e12a175bc20ccb"

  url "https://downloads.mixxx.org/releases/#{version}/mixxx-#{version}-macosintel.dmg"
  name "Mixxx"
  desc "Open-source DJ software"
  homepage "https://www.mixxx.org/"

  livecheck do
    url "https://www.mixxx.org/download/"
    regex(%r{href=["']?https://downloads\.mixxx\.org/releases/.*/mixxx[-_.]v?(\d+(?:\.\d+)+)[-_.]macos(?:intel|arm)\.dmg}i)
  end

  app "Mixxx.app"

  zap trash: [
    "~/Library/Application Scripts/org.mixxx.mixxx",
    "~/Library/Containers/org.mixxx.mixxx",
    "~/Music/Mixxx",
  ]
end
