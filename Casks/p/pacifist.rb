cask "pacifist" do
  version "4.1.3"
  sha256 "4b299bbb4724fe541a5597f30932463101409b0218641b72a5194ee5d5885a41"

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
