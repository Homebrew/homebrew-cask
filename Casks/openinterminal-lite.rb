cask "openinterminal-lite" do
  version "1.2.4"
  sha256 "816d2e3a97e9fc1613fdde75c13eaa171944dd9328fb3dd645abc68b6ec7df6f"

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
end
