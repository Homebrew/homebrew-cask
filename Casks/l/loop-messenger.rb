cask "loop-messenger" do
  arch arm: "m1", intel: "x64"

  version "5.12.0"
  sha256 arm:   "25f5181f34aed32aa06f85cfb32745af1cd092f70bee3233f2536b968bd39f9c",
         intel: "a31409019f85a96191688efe3e032446b600e4b9db05c18bc2178ff38bee54ce"

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
