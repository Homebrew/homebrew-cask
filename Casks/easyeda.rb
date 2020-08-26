cask "easyeda" do
  version "6.4.5"
  sha256 "6e3e7d9b443fa72b6b81c2d8f0a0dbe8568b38d2c552dfac73789db8dd576ade"

  url "https://image.easyeda.com/files/easyeda-mac-darwin-#{version}.zip"
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
