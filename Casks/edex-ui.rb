cask "edex-ui" do
  version "2.2.7"
  sha256 "80b2b43e50e000da035efbdde21ca96106c021a5ef5b47e45fad8e9b4bb17a95"

  url "https://github.com/GitSquared/edex-ui/releases/download/v#{version}/eDEX-UI-macOS.dmg"
  name "eDEX-UI"
  homepage "https://github.com/GitSquared/edex-ui"

  app "eDEX-UI.app"

  zap trash: [
    "~/Library/Application Support/eDEX-UI",
    "~/Library/Saved Application State/com.edex.ui.savedState",
    "~/Library/Preferences/com.edex.ui.plist",
  ]
end
