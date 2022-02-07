cask "openineditor-lite" do
  version "1.2.4"
  sha256 "a678ec01afccc94022700dbf663e252f975369b804855fccdc6c4a873dffc572"

  url "https://github.com/Ji4n1ng/OpenInTerminal/releases/download/v#{version}/OpenInEditor-Lite.app.zip"
  name "OpenInEditor-Lite"
  desc "Finder Toolbar app to open the current directory in Editor"
  homepage "https://github.com/Ji4n1ng/OpenInTerminal"

  livecheck do
    url "https://github.com/Ji4n1ng/OpenInTerminal/releases"
    strategy :page_match
    regex(%r{v?(\d+(?:\.\d+)+)/OpenInEditor[._-]Lite\.app\.zip}i)
  end

  app "OpenInEditor-Lite.app"

  zap trash: "~/Library/Preferences/wang.jianing.app.OpenInEditor-Lite.plist"
end
