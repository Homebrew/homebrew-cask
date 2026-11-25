cask "openplc-editor" do
  arch arm: "-ARM"

  version "4.4.0"
  sha256 arm:   "8098ed290b7d209ca7eedd4d1995fd0747ff396dcc4a9b5ab377cdb699b22612",
         intel: "5bdaf71b77f797043863b2196441e798d8f79d5f58a08b0d493b7635419f133e"

  url "https://github.com/Autonomy-Logic/openplc-editor/releases/download/v#{version}/OpenPLC_Editor_#{version}#{arch}.dmg"
  name "OpenPLC Editor"
  desc "IDE for creating programs for the OpenPLC Runtime"
  homepage "https://github.com/Autonomy-Logic/openplc-editor"

  depends_on :macos

  app "OpenPLC Editor.app"

  uninstall quit: "com.autonomylogic.openplceditor"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.autonomylogic.openplceditor.sfl*",
    "~/Library/Application Support/OpenPLC Editor",
    "~/Library/HTTPStorages/com.autonomylogic.openplceditor",
    "~/Library/Preferences/com.autonomylogic.openplceditor.plist",
    "~/Library/Saved Application State/com.autonomylogic.openplceditor.savedState",
  ]
end
