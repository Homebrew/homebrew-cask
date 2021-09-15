cask "mixxx" do
  version "2.3.0"
  sha256 "9fad756ed0dfcd490649562b77a26f9817b246ec40e38df02e92f1c081cb3120"

  url "https://downloads.mixxx.org/releases/#{version}/mixxx-#{version}-macosintel.dmg"
  name "Mixxx"
  desc "Open-source DJ software"
  homepage "https://www.mixxx.org/"

  livecheck do
    url "https://www.mixxx.org/download/"
    strategy :page_match
    regex(%r{href=.*?/mixxx[-_.](\d+(?:\.\d+)*)[-_.]macosintel\.dmg}i)
  end

  app "Mixxx.app"
end
