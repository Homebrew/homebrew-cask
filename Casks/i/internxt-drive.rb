cask "internxt-drive" do
  version "2.6.7.86"
  sha256 "0128237ebd2d0ac8cd47337438d743065e320e8b618281af896def5aa88f4783"

  url "https://github.com/internxt/drive-desktop-macos/releases/download/v#{version}/Internxt_Drive_#{version}.dmg",
      verified: "github.com/internxt/drive-desktop-macos/"
  name "Internxt Drive"
  desc "Client for Internxt file storage service"
  homepage "https://internxt.com/drive"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "Internxt Drive.app"

  zap trash: [
    "~/.internxt-desktop",
    "~/Library/Application Support/internxt-drive",
    "~/Library/Logs/Internxt Drive",
    "~/Library/Logs/internxt-drive",
    "~/Library/Preferences/com.internxt.drive.plist",
  ]
end
