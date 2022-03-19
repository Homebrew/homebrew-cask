cask "mixxx" do
  version "2.3.2"
  sha256 "51adbe24755273cf8423253a2520ff994483e500836c357c90869a45a6c74e0b"

  url "https://downloads.mixxx.org/releases/#{version}/mixxx-#{version}-macosintel.dmg"
  name "Mixxx"
  desc "Open-source DJ software"
  homepage "https://www.mixxx.org/"

  livecheck do
    url "https://www.mixxx.org/download/"
    regex(%r{href=.*?/mixxx[-_.]v?(\d+(?:\.\d+)+)[-_.]macosintel\.dmg}i)
  end

  app "Mixxx.app"
end
