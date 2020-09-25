cask "openinterminal-lite" do
  version "1.1.5"
  sha256 "561f78a6e8fde5b48b2aee41390b227fa5fe01b6c7530cd7cb0a21d010849296"

  url "https://github.com/Ji4n1ng/OpenInTerminal/releases/download/#{version}/OpenInTerminal-Lite.app.zip"
  appcast "https://github.com/Ji4n1ng/OpenInTerminal/releases.atom"
  name "OpenInTerminal-Lite"
  homepage "https://github.com/Ji4n1ng/OpenInTerminal"

  app "OpenInTerminal-Lite.app"
end
