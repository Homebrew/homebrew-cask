cask "internxt-drive" do
  version "1.9.3"
  sha256 "b01d07f10fe609c002534731226c20858548f2eee97b83fdc85b23a9d6c22781"

  url "https://github.com/internxt/drive-desktop/releases/download/v#{version}/internxt-drive-#{version}.dmg",
      verified: "https://github.com/internxt/drive-desktop/"
  name "Internxt Drive"
  desc "Client for Internxt file storage service"
  homepage "https://internxt.com/drive"

  auto_updates true

  app "Internxt Drive.app"

  zap trash: [
    "~/.internxt-desktop",
    "~/Library/Application Support/internxt-drive",
    "~/Library/Logs/Internxt Drive",
    "~/Library/Logs/internxt-drive",
    "~/Library/Preferences/com.internxt.drive.plist",
  ]
end
