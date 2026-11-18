cask "internxt-drive" do
  version "2.7.1.90"
  sha256 "00c5103820e45f201056105024bee3aefd67d2508212673efd08683a6164d7c5"

  url "https://github.com/internxt/drive-desktop-macos/releases/download/v#{version}/Internxt_Drive_#{version}.dmg"
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
