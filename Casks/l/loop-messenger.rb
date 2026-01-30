cask "loop-messenger" do
  arch arm: "m1", intel: "x64"

  version "6.0.3"
  sha256 arm:   "e0cc5604ba65178b1064769e6d72d38d5944bf46fba87e8103443873b2d8ce49",
         intel: "be760a6a2538d328fd3f3902b1f99b77e8ed5cf8bc94b0c844371e3ecc622032"

  url "https://artifacts.wilix.dev/repository/loop-files/loop-#{version}/loop-desktop-#{version}-mac-#{arch}.dmg",
      verified: "artifacts.wilix.dev/"
  name "Loop"
  desc "Team messenger for business communication"
  homepage "https://loop.ru/"

  livecheck do
    url "https://loop.ru/download/"
    regex(/loop[._-]desktop[._-]v?(\d+(?:\.\d+)+).+?\.dmg/i)
  end

  depends_on macos: ">= :monterey"

  app "LOOP.app"

  zap trash: [
    "~/Library/Application Support/LOOP",
    "~/Library/Preferences/ru.loop.app.plist",
  ]
end
