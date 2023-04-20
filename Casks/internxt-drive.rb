cask "internxt-drive" do
  version "1.9.8"
  sha256 "8b0171520bd953b574b6970f90aeb4e61f32f1fdd53e58bfe93e1247d8511152"

  url "https://github.com/internxt/drive-desktop/releases/download/v#{version}/internxt-drive-#{version}.dmg",
      verified: "github.com/internxt/drive-desktop/"
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
