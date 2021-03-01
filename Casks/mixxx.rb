cask "mixxx" do
  version "2.2.4"
  sha256 "4baf38b866693ea1411c988ea7c1dcfabf9635179358191743109b7a27a0d4d3"

  url "https://downloads.mixxx.org/mixxx-#{version}/mixxx-#{version}-osxintel.dmg"
  name "Mixxx"
  desc "Open-source DJ software"
  homepage "https://www.mixxx.org/"

  livecheck do
    url "https://www.mixxx.org/download/"
    strategy :page_match
    regex(%r{href=.*?/mixxx-(\d+(?:\.\d+)*)-osxintel\.dmg}i)
  end

  app "Mixxx.app"
end
