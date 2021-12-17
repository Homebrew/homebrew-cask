cask "pacifist" do
  version "4.0.1,65216"
  sha256 "09fa75a476d80d1241c30772a116254a0b19a54a5c03614b4da75860faa09718"

  url "https://www.charlessoft.com/pacifist_download/Pacifist_#{version.before_comma}.dmg"
  name "Pacifist"
  desc "Extract files and folders from package files, disk images, and archives"
  homepage "https://www.charlessoft.com/"

  livecheck do
    url "https://www.charlessoft.com/cgi-bin/pacifist_sparkle.cgi"
    strategy :sparkle
  end

  auto_updates true

  app "Pacifist.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.charlessoft.pacifist.sfl2",
    "~/Library/Preferences/com.charlessoft.pacifist.plist",
    "~/Library/Saved Application State/com.charlessoft.pacifist.savedState",
  ]
end
