cask "openinterminal-lite" do
  version "1.2.2"
  sha256 "d36b2359eba2806b458aa130e5dd56bcccf48e396e5e3dc4211fbde6c820f973"

  url "https://github.com/Ji4n1ng/OpenInTerminal/releases/download/v#{version}/OpenInTerminal-Lite.app.zip"
  appcast "https://github.com/Ji4n1ng/OpenInTerminal/releases.atom"
  name "OpenInTerminal-Lite"
  desc "Finder Toolbar app to open the current directory in Terminal"
  homepage "https://github.com/Ji4n1ng/OpenInTerminal"

  app "OpenInTerminal-Lite.app"
end
