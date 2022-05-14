cask "openinterminal-lite" do
  version "1.2.5"
  sha256 "2d2f7ab19bcd443fa533a294875a0e95333cca0a60707ac7226bcafaaae2972b"

  url "https://github.com/Ji4n1ng/OpenInTerminal/releases/download/v#{version}/OpenInTerminal-Lite.app.zip"
  name "OpenInTerminal-Lite"
  desc "Finder Toolbar app to open the current directory in Terminal"
  homepage "https://github.com/Ji4n1ng/OpenInTerminal"

  livecheck do
    url "https://github.com/Ji4n1ng/OpenInTerminal/releases"
    strategy :page_match
    regex(%r{v?(\d+(?:\.\d+)+)/OpenInTerminal[._-]Lite\.app\.zip}i)
  end

  app "OpenInTerminal-Lite.app"

  zap trash: "~/Library/Preferences/wang.jianing.app.OpenInTerminal-Lite.plist"
end
