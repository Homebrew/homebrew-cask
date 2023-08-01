cask "easyeda" do
  version "6.5.34"
  sha256 "ba7a8eab4b3b6f3f008a440fa1c98313cc1147f2668b14919f5efc969fb95934"

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
