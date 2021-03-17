cask "openineditor-lite" do
  version "1.2.3"
  sha256 "68f9c93c18324885c03a03d571ca110a24a2fd0fd90d923165d82f4db7e0699d"

  url "https://github.com/Ji4n1ng/OpenInTerminal/releases/download/v#{version}/OpenInEditor-Lite.app.zip"
  appcast "https://github.com/Ji4n1ng/OpenInTerminal/releases.atom"
  name "OpenInEditor-Lite"
  desc "Finder Toolbar app to open the current directory in Editor"
  homepage "https://github.com/Ji4n1ng/OpenInTerminal"

  app "OpenInEditor-Lite.app"
end
