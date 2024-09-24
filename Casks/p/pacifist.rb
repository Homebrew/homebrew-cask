cask "pacifist" do
  version "4.1.1"
  sha256 "5c8c5eac3f886726bb1f1fb73c9c9184bb83d2613d1fa336b79340a82e9154b5"

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
  binary "#{appdir}/Pacifist.app/Contents/Resources/usr/bin/pacifist"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.charlessoft.pacifist.sfl*",
    "~/Library/Preferences/com.charlessoft.pacifist.plist",
    "~/Library/Saved Application State/com.charlessoft.pacifist.savedState",
  ]
end
