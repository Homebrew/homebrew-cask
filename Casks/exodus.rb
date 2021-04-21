cask "exodus" do
  version "21.4.12"
  sha256 "3e7db321a726cea5e4db61ed1b3687295e96fc5906138f9a74f97bea6d86d08b"

  url "https://downloads.exodus.com/releases/exodus-macos-#{version}.dmg"
  name "Exodus"
  desc "Desktop wallet for cryptocurrency assets"
  homepage "https://www.exodus.com/"

  livecheck do
    url "https://www.exodus.com/releases/"
    strategy :page_match
    regex(/new\s*in.*?(\d+(?:\.\d+)*)/i)
  end

  auto_updates true

  app "Exodus.app"

  zap trash: [
    "~/Library/Application Support/Exodus",
    "~/Library/Preferences/com.electron.exodus.helper.plist",
    "~/Library/Preferences/com.electron.exodus.plist",
    "~/Library/Saved Application State/com.electron.exodus.savedState",
  ]
end
