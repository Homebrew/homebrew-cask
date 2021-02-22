cask "edex-ui" do
  version "2.2.6"
  sha256 "a423de8c7ae20545d561ec1d9228a90fd2f40137787a1f7276356aaf5df6358c"

  url "https://github.com/GitSquared/edex-ui/releases/download/v#{version}/eDEX-UI-macOS.dmg"
  appcast "https://github.com/GitSquared/edex-ui/releases.atom"
  name "eDEX-UI"
  homepage "https://github.com/GitSquared/edex-ui"

  app "eDEX-UI.app"

  zap trash: [
    "~/Library/Application Support/eDEX-UI",
    "~/Library/Saved Application State/com.edex.ui.savedState",
    "~/Library/Preferences/com.edex.ui.plist",
  ]
end
