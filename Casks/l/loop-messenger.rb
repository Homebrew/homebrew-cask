cask "loop-messenger" do
  arch arm: "m1", intel: "x64"

  version "5.13.0"
  sha256 arm:   "c1756453102fa0d214894a5458babd3f56b9f41bb73da40b10133d6be3bfe88e",
         intel: "c63a87cd734fb49e4851d79f2be94f4c78d6bf5f64307c5938d1ad7101a6a7d1"

  url "https://artifacts.wilix.dev/repository/loop-files/loop-#{version.major_minor}/loop-desktop-#{version}-mac-#{arch}.dmg",
      verified: "artifacts.wilix.dev/"
  name "Loop"
  desc "Team messenger for business communication"
  homepage "https://loop.ru/"

  livecheck do
    url "https://loop.ru/download/"
    regex(/loop[._-]desktop[._-]v?(\d+(?:\.\d+)+).+?\.dmg/i)
  end

  depends_on macos: ">= :big_sur"

  app "LOOP.app"

  zap trash: [
    "~/Library/Application Support/LOOP",
    "~/Library/Preferences/ru.loop.app.plist",
  ]
end
