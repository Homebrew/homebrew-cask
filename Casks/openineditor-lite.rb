cask "openineditor-lite" do
  version "1.2.5"
  sha256 "745f81ba178795d44e97c8c60b8b28022f7258f70f673555da0da3a34637519d"

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
