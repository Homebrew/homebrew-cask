cask "internxt-drive" do
  version "1.9.9"
  sha256 "7670c21b8d0721c9ce8526d0619bee9bdc75af023b48507217f47d3ca84c826a"

  url "https://github.com/internxt/drive-desktop/releases/download/v#{version}/internxt-drive-#{version}.dmg",
      verified: "github.com/internxt/drive-desktop/"
  name "Internxt Drive"
  desc "Client for Internxt file storage service"
  homepage "https://internxt.com/drive"

  livecheck do
    url :url
    strategy :github_latest
  end

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
