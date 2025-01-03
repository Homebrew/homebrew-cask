cask "internxt-drive" do
  version "2.5.1.70"
  sha256 "2c379bd18e5a466738613fdb7520f73333597dbf40c413a35502b2193317961c"

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
