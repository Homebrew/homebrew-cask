cask "loop-messenger" do
  arch arm: "arm64", intel: "x64"

  version "6.0.4"
  sha256 arm:   "456ec62326c0a81a136c6948c710f1e50b77d6437ab096219b97a24b9dbd8e11",
         intel: "d34f8de47c0e3bcb5015993b3daf4d11e7383091a787fb2acfd202951070d634"

  url "https://artifacts.wilix.dev/repository/loop-files/loop-#{version}/loop-desktop-#{version}-mac-#{arch}.dmg"
  name "Loop"
  desc "Team messenger for business communication"
  homepage "https://loop.ru/"

  livecheck do
    url "https://loop.ru/download/"
    regex(/loop[._-]desktop[._-]v?(\d+(?:\.\d+)+).+?\.dmg/i)
  end

  depends_on macos: :monterey

  app "LOOP.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/loop.desktop.sfl*",
    "~/Library/Application Support/LOOP",
    "~/Library/Logs/LOOP",
    "~/Library/Preferences/Loop.Desktop.plist",
    "~/Library/Preferences/ru.loop.app.plist",
  ]
end
