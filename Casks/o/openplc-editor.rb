cask "openplc-editor" do
  arch arm: "-ARM"

  version "4.3.2"
  sha256 arm:   "4cda4b98109a464c2a21ee86d707d7eec45ce38ab8d41b391243312f3a996e8e",
         intel: "2c35aa520e3039f7435063234ffc53c7172e1308203e043b93a203bbc08aa42b"

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
