cask "openplc-editor" do
  arch arm: "-ARM"

  version "4.3.3"
  sha256 arm:   "4fea654104d7bd74d4efe8e74c87f42429eefcb9a768d4668a018d9b69f44c5c",
         intel: "870d17ca8708996cb117783e9c7bab3a15093bf859e9e70008334f9004fc0b56"

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
