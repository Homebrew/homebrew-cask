cask "loop-messenger" do
  arch arm: "m1", intel: "x64"

  version "5.10.0"
  sha256 arm:   "7fdbf691a0a031299400a02e56636f145eb0f284e7e752e584eae2aa4d268717",
         intel: "9a513c7904b370d0960a7f1ec7c5fe7f1097ac5f595cdf115d60b2f384ea1d82"

  url "https://artifacts.wilix.dev/repository/loop-files/loop-#{version.major_minor}/loop-desktop-#{version}-mac-#{arch}.dmg",
      verified: "artifacts.wilix.dev/"
  name "Loop"
  desc "Team messenger for business communication"
  homepage "https://loop.ru/"

  livecheck do
    url "https://loop.ru/download/"
    regex(/loop[._-]desktop[._-]v?(\d+(?:\.\d+)+).+?\.dmg/i)
  end

  depends_on macos: ">= :catalina"

  app "LOOP.app"

  zap trash: [
    "~/Library/Application Support/LOOP",
    "~/Library/Preferences/ru.loop.app.plist",
  ]
end
