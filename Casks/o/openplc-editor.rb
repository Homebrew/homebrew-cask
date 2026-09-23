cask "openplc-editor" do
  arch arm: "-ARM"

  version "4.3.1"
  sha256 arm:   "85308d6c52126d02fb394b725aaccf9e68290a87548be076e57dfe373fd461f6",
         intel: "0d87b4b5d09b44c1df4ce446995b92aa66ad62be13e50dba6eebc1831579a178"

  url "https://github.com/Autonomy-Logic/openplc-editor/releases/download/v#{version}/OpenPLC_Editor_#{version}#{arch}.dmg"
  name "OpenPLC Editor"
  desc "IDE for creating programs for the OpenPLC Runtime"
  homepage "https://github.com/Autonomy-Logic/openplc-editor"

  depends_on :macos

  app "OpenPLC Editor.app"

  uninstall quit: "com.autonomylogic.openplceditor"

  zap trash: [
    "~/Library/Application Support/OpenPLC Editor",
    "~/Library/HTTPStorages/com.autonomylogic.openplceditor",
    "~/Library/Preferences/com.autonomylogic.openplceditor.plist",
    "~/Library/Saved Application State/com.autonomylogic.openplceditor.savedState",
  ]
end
