cask "openinterminal" do
  version "2.3.1"
  sha256 "1dee772262bffa980bab019ba11397ca2833bec99f3c2ccf0e2842dd7d7ae7b7"

  url "https://github.com/Ji4n1ng/OpenInTerminal/releases/download/v#{version}/OpenInTerminal.app.zip"
  appcast "https://github.com/Ji4n1ng/OpenInTerminal/releases.atom"
  name "OpenInTerminal"
  desc "Finder Toolbar app to open the current directory in Terminal or Editor"
  homepage "https://github.com/Ji4n1ng/OpenInTerminal"

  depends_on macos: ">= :sierra"

  app "OpenInTerminal.app"
end
