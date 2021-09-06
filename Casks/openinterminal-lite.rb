cask "openinterminal-lite" do
  version "1.2.3"
  sha256 "67239f7201fed7457d283add3a4f23320038ff757473a1f2238f986fd413b853"

  url "https://github.com/Ji4n1ng/OpenInTerminal/releases/download/v#{version}/OpenInTerminal-Lite.app.zip"
  name "OpenInTerminal-Lite"
  desc "Finder Toolbar app to open the current directory in Terminal"
  homepage "https://github.com/Ji4n1ng/OpenInTerminal"

  livecheck do
    url "https://raw.githubusercontent.com/Ji4n1ng/OpenInTerminal/master/Resources/README-Lite.md"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)*)}i)
  end

  app "OpenInTerminal-Lite.app"
end
