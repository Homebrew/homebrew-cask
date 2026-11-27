cask "openplc-editor" do
  arch arm: "-ARM"

  version "4.4.0"
  sha256 :no_check # required as upstream package is updated in-place

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
