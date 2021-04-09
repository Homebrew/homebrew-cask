cask "easyeda" do
  version "6.4.19.4"
  sha256 "268b252c4454e84a6e2c9ce4c0962165f3e80ed693ec2457a533de55630f2ed7"

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
