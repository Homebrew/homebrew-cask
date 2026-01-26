cask "pacifist" do
  version "4.1.4"
  sha256 "d76e51f10a98460809c7f5711e7f44742a7cc7ed7372d7f1f4c14a8e41c249ea"

  url "https://www.charlessoft.com/pacifist_download/Pacifist_#{version}.dmg"
  name "Pacifist"
  desc "Extract files and folders from package files, disk images, and archives"
  homepage "https://www.charlessoft.com/"

  livecheck do
    url "https://www.charlessoft.com/cgi-bin/pacifist_sparkle.cgi"
    strategy :sparkle, &:short_version
  end

  auto_updates true

  app "Pacifist.app"
  binary "#{appdir}/Pacifist.app/Contents/Resources/usr/bin/pacifist"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.charlessoft.pacifist.sfl*",
    "~/Library/Preferences/com.charlessoft.pacifist.plist",
    "~/Library/Saved Application State/com.charlessoft.pacifist.savedState",
  ]
end
