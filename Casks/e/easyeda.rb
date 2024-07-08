cask "easyeda" do
  version "6.5.44"
  sha256 "6789ad5196dcae88ddb9933932bf6f7a534408fd26a4f88dbd5c7ca2de7a7109"

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

  caveats do
    requires_rosetta
  end
end
