cask "openinterminal-lite" do
  version "1.1.4"
  sha256 "2fe0d20644c53af921452ba58449afddd8947d913ffaa37da401c1c9c4f60ecd"

  url "https://github.com/Ji4n1ng/OpenInTerminal/releases/download/#{version}/OpenInTerminal-Lite.app.zip"
  appcast "https://github.com/Ji4n1ng/OpenInTerminal/releases.atom"
  name "OpenInTerminal-Lite"
  homepage "https://github.com/Ji4n1ng/OpenInTerminal"

  app "OpenInTerminal-Lite.app"
end
