cask "easyeda" do
  version "6.4.20.6"
  sha256 "af2987a8cb503d2d9b09ecfdbd123d05b4f5e9c1108d61231d1f923a6767dbd7"

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
