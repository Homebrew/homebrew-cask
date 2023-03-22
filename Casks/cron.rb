cask "cron" do
  arch arm: "arm64", intel: "x64"

  version "1.112.0"
  sha256 arm:   "730d81f6343228dbeef760c0b90442d91e17414aba19a5ce675fb0a080a6769d",
         intel: "55fde04956da1b90484439d45adb0d629837f4bc04be992b4f9e6c9dbe78dce5"

  url "https://download.todesktop.com/210303leazlircz/Cron%20#{version}-#{arch}-mac.zip",
      verified: "download.todesktop.com/210303leazlircz/"
  name "Cron Calendar"
  desc "Calendar for professionals and teams"
  homepage "https://cron.com/"

  livecheck do
    url "https://download.todesktop.com/210303leazlircz/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Cron.app"

  zap trash: [
    "~/Library/Application Support/Cron",
    "~/Library/Preferences/com.cron.electron.plist",
    "~/Library/Saved Application State/com.cron.electron.savedState",
  ]
end
