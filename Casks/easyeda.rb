cask "easyeda" do
  version "6.4.4"
  sha256 "6fa881da7761fc825a4f13a4a640a613a8cbf524783adc2a2096433a46f006c5"

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
