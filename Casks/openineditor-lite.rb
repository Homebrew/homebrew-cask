cask "openineditor-lite" do
  version "1.2.0"
  sha256 "f35c1a2a94d3e3f4c5472ad9be435baa4c82403cdb8991ef43f98da26c2ad9c0"

  url "https://github.com/Ji4n1ng/OpenInTerminal/releases/download/v#{version}/OpenInEditor-Lite.app.zip"
  appcast "https://github.com/Ji4n1ng/OpenInTerminal/releases.atom"
  name "OpenInEditor-Lite"
  desc "Finder Toolbar app to open the current directory in Editor"
  homepage "https://github.com/Ji4n1ng/OpenInTerminal"

  app "OpenInEditor-Lite.app"
end
