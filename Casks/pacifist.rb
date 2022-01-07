cask "pacifist" do
  version "4.0.2,65727"
  sha256 "8c1c1c71d0452f8c0a3276224f6755d5c48fcfdf5d12bac12d4b418698052b0f"

  url "https://www.charlessoft.com/pacifist_download/Pacifist_#{version.csv.first}.dmg"
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
