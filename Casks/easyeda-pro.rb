cask "easyeda-pro" do
  arch arm: "arm64", intel: "x64"

  version "1.9.30"
  sha256 arm:   "18e8fd382b3d0611ba198a41321637b11c9c4ccd69ec817cb7115504ce0d31bd",
         intel: "7621d4d0013d307951ad297d73ec4179bc27a58560a1056a5b645c2acbac0c36"

  url "https://image.easyeda.com/files/easyeda-pro-mac-#{arch}-#{version}.zip"
  name "EasyEDA Pro"
  desc "PCB design tool"
  homepage "https://easyeda.com/"

  livecheck do
    url "https://easyeda.com/page/download"
    regex(%r{href=.*?/easyeda[._-]pro[._-]mac[._-](?:arm64|x64)[._-]?(\d+(?:\.\d+)+)\.zip}i)
  end

  app "EasyEDA Pro.app"

  zap trash: [
    "~/Library/Application Support/EasyEDA",
    "~/Library/Logs/EasyEDA",
    "~/Library/Preferences/com.easyeda.editor.helper.plist",
    "~/Library/Preferences/com.easyeda.editor.plist",
    "~/Library/Saved Application State/com.easyeda.editor.savedState",
  ]
end
