cask "pacifist" do
  version "4.1.0"
  sha256 "ffc16f316034ab9e7ea986fb1e24c0f200f5d95fccbd355652d7be578ef7f7ef"

  url "https://www.charlessoft.com/pacifist_download/Pacifist_#{version}.dmg"
  name "Pacifist"
  desc "Extract files and folders from package files, disk images, and archives"
  homepage "https://www.charlessoft.com/"

  livecheck do
    url "https://www.charlessoft.com/cgi-bin/pacifist_sparkle.cgi"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Pacifist.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.charlessoft.pacifist.sfl2",
    "~/Library/Preferences/com.charlessoft.pacifist.plist",
    "~/Library/Saved Application State/com.charlessoft.pacifist.savedState",
  ]
end
