cask "internxt-drive" do
  version "2.0.0"
  sha256 "0a218560e645a99d65c052597ab125a148c93827bf27b5c2060213c6127418e5"

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
