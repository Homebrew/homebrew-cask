cask "easyeda" do
  version "6.4.7"
  sha256 "f2162b6d7ef6b2f7eb1c4ce00bce7ffbfee8392e9fd526fbafa1d84522bf2db9"

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
