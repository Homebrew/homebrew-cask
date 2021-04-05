cask "easyeda" do
  version "6.4.19.3"
  sha256 "e390726629b315028ae5646b421aac415a59ee38797c370e80210578853b5cba"

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
