cask "easyeda" do
  version "6.5.8"
  sha256 "06bc354e438b03a6824bb4100032d87509aee09d111b6edb646e96bcfb6e76d8"

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
