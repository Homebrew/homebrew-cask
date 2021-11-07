cask "pacifist" do
  version "4.0,65083"
  sha256 "d7ca9a1d98b75c372e15b35d7d8e68fda2f55739cd5fa133419d039b426cf2fe"

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
