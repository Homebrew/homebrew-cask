cask "farrago" do
  version "1.6.0"
  sha256 "72670cd8fdc297fdabe6d83614caf25cd5513b6792a00dfe9d5eb225aa0b657e"

  url "https://rogueamoeba.com/farrago/download/Farrago.zip"
  appcast "https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.farrago&system=10140"
  name "Farrago"
  homepage "https://rogueamoeba.com/farrago/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Farrago.app"
end
