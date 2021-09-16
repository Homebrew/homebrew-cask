cask "easyeda" do
  version "6.4.25"
  sha256 "af3dcb51a172c80d5374618bad47d56242b0cb0593f85db33565d1b2431833b9"

  url "https://image.easyeda.com/files/easyeda-mac-darwin-#{version}.zip"
  name "EasyEDA"
  homepage "https://easyeda.com/"

  livecheck do
    url "https://easyeda.com/page/download"
    strategy :page_match
    regex(%r{href=.*?/easyeda-mac-darwin-(\d+(?:\.\d+)*)\.zip}i)
  end

  app "EasyEDA.app"

  uninstall delete: [
    "~/Library/Preferences/com.easyeda.editor.helper.plist",
    "~/Library/Preferences/com.easyeda.editor.plist",
    "~/Library/Saved Application State/com.easyeda.editor.savedState",
    "~/Library/Application Support/EasyEDA",
    "~/Library/Logs/EasyEDA",
  ]
end
