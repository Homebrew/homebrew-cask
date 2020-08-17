cask "easyeda" do
  version "6.3.53"
  sha256 "794d6fb526a9fa5d0a7d554513f70ca7f6fa6b4f19d8eaa62701e909a8aeacb4"

  url "https://image.easyeda.com/files/easyeda-#{version}-mac-x64.zip"
  appcast "https://easyeda.com/page/download"
  name "EasyEDA"
  homepage "https://easyeda.com/"

  app "EasyEDA.app"

  uninstall delete: [
    "~/Library/Preferences/com.easyeda.editor.helper.plist",
    "~/Library/Preferences/com.easyeda.editor.plist",
    "~/Library/Saved Application State/com.easyeda.editor.savedState",
    "~/Library/Application Support/EasyEDA",
    "~/Library/Logs/EasyEDA",
  ]
end
