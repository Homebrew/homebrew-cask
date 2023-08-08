cask "easyeda" do
  version "6.5.34"
  sha256 "ab627d1bf47e267e6ae6b74e269879fd5a1f9526f0648bba1086b397718784ec"

  url "https://image.easyeda.com/files/easyeda-mac-x64-#{version}.zip"
  name "EasyEDA"
  desc "PCB design tool"
  homepage "https://easyeda.com/"

  livecheck do
    url "https://easyeda.com/page/download"
    regex(%r{href=.*?/easyeda[._-]mac[._-]x64[._-]v?(\d+(?:\.\d+)+)\.zip}i)
  end

  app "EasyEDA.app"

  zap trash: [
    "~/Library/Application Support/EasyEDA",
    "~/Library/Logs/EasyEDA",
    "~/Library/Preferences/com.easyeda.editor.helper.plist",
    "~/Library/Preferences/com.easyeda.editor.plist",
    "~/Library/Saved Application State/com.easyeda.editor.savedState",
  ]
end
