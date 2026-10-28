cask "openplc-editor" do
  arch arm: "-ARM"

  version "4.3.3"
  sha256 arm:   "289266e13215b9bed79500634caba68e132180ff13ad9a0ca4d08fa02ed440bf",
         intel: "f0e04e0ff861b5baa938d043485ad6a45d526ed7673d3d9cb166ecadb1aa49c4"

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
