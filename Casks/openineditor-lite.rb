cask "openineditor-lite" do
  version "1.1.4"
  sha256 "97d35878eedd04cfc9b4206051895479031e12e5fd9fbf7bf6ac7135d32c4245"

  url "https://github.com/Ji4n1ng/OpenInTerminal/releases/download/#{version}/OpenInEditor-Lite.app.zip"
  appcast "https://github.com/Ji4n1ng/OpenInTerminal/releases.atom"
  name "OpenInEditor-Lite"
  homepage "https://github.com/Ji4n1ng/OpenInTerminal"

  app "OpenInEditor-Lite.app"
end
