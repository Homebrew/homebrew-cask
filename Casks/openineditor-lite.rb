cask "openineditor-lite" do
  version "1.2.1"
  sha256 "5be46aa10552fb68c04d7a0c34356c96d196b6f0de539d7de8c4419478fd0759"

  url "https://github.com/Ji4n1ng/OpenInTerminal/releases/download/v#{version}/OpenInEditor-Lite.app.zip"
  appcast "https://github.com/Ji4n1ng/OpenInTerminal/releases.atom"
  name "OpenInEditor-Lite"
  desc "Finder Toolbar app to open the current directory in Editor"
  homepage "https://github.com/Ji4n1ng/OpenInTerminal"

  app "OpenInEditor-Lite.app"
end
