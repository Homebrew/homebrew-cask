cask "edex-ui" do
  version "2.2.2"
  sha256 "5a7d232331dd06d61db39568e02f4bd3fa27262cb653f30ac6ff3b0ab570872c"

  url "https://github.com/GitSquared/edex-ui/releases/download/v#{version}/eDEX-UI.MacOS.Image.dmg"
  appcast "https://github.com/GitSquared/edex-ui/releases.atom"
  name "eDEX-UI"
  homepage "https://github.com/GitSquared/edex-ui"

  app "eDEX-UI.app"
end
