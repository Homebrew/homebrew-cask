cask "mixxx" do
  version "2.3.4"
  sha256 "a85c576a186c2252caa581ae45d78874515a60ebdcc8e50bfc1bcd569973670b"

  url "https://downloads.mixxx.org/releases/#{version}/mixxx-#{version}-macosintel.dmg"
  name "Mixxx"
  desc "Open-source DJ software"
  homepage "https://www.mixxx.org/"

  livecheck do
    url "https://www.mixxx.org/download/"
    regex(%r{href=.*?/mixxx[-_.]v?(\d+(?:\.\d+)+)[-_.]macosintel\.dmg}i)
  end

  app "Mixxx.app"

  zap trash: [
    "~/Library/Application Scripts/org.mixxx.mixxx",
    "~/Library/Containers/org.mixxx.mixxx",
    "~/Music/Mixxx",
  ]
end
