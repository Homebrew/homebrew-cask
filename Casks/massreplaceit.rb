cask "massreplaceit" do
  version "3.1.2"
  sha256 :no_check

  url "http://www.hexmonkeysoftware.com/files/MassReplaceIt.dmg"
  name "MassReplaceIt"
  desc "Find and replace utility"
  homepage "http://www.hexmonkeysoftware.com/"

  livecheck do
    url :homepage
    regex(/MassReplaceIt\s+(\d+(?:\.\d+)+)/)
  end

  app "MassReplaceIt.app"
end
