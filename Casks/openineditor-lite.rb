cask "openineditor-lite" do
  version "1.1.5"
  sha256 "2b8eb742ca675cba26707192462598f52933cb33f9ba72850d075b81bdbe958c"

  url "https://github.com/Ji4n1ng/OpenInTerminal/releases/download/#{version}/OpenInEditor-Lite.app.zip"
  appcast "https://github.com/Ji4n1ng/OpenInTerminal/releases.atom"
  name "OpenInEditor-Lite"
  homepage "https://github.com/Ji4n1ng/OpenInTerminal"

  app "OpenInEditor-Lite.app"
end
