cask "pacifist" do
  version "4.1.2"
  sha256 "98fae0dcaf870fd877100944976c2dc3036701de5912d2f0e386133e2288a007"

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
