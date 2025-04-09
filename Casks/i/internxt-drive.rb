cask "internxt-drive" do
  version "2.5.4.73"
  sha256 "244a4cfae27e0b52f9ae5154837486afefb8e2e85e202e36c6df009fbc8ecbe2"

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
  depends_on macos: ">= :big_sur"

  app "Internxt Drive.app"

  zap trash: [
    "~/.internxt-desktop",
    "~/Library/Application Support/internxt-drive",
    "~/Library/Logs/Internxt Drive",
    "~/Library/Logs/internxt-drive",
    "~/Library/Preferences/com.internxt.drive.plist",
  ]
end
