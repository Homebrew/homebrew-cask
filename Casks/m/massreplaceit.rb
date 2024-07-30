cask "massreplaceit" do
  version "3.1.2"
  sha256 :no_check

  url "http://www.hexmonkeysoftware.com/files/MassReplaceIt.dmg"
  name "MassReplaceIt"
  desc "Find and replace utility"
  homepage "http://www.hexmonkeysoftware.com/"

  livecheck do
    url :homepage
    regex(/MassReplaceIt\s+(\d+(?:\.\d+)+)/i)
  end

  app "MassReplaceIt.app"

  zap trash: [
    "~/Library/Application Support/MassReplaceIt",
    "~/Library/Caches/com.hexmonkey.massreplaceit",
    "~/Library/Preferences/com.hexmonkey.massreplaceit.plist",
    "~/Library/Saved Application State/com.hexmonkey.massreplaceit.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
