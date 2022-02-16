cask "easyeda" do
  version "6.4.31"
  sha256 "ebdfab7adc5513f9001c8e9ec6335c1c039d16b5cdb6a13dc3f814e8d808853b"

  url "https://image.easyeda.com/files/easyeda-mac-darwin-#{version}.zip"
  name "EasyEDA"
  desc "PCB design tool"
  homepage "https://easyeda.com/"

  livecheck do
    url "https://easyeda.com/page/download"
    regex(%r{href=.*?/easyeda[._-]mac[._-]darwin[._-]v?(\d+(?:\.\d+)+)\.zip}i)
  end

  app "EasyEDA.app"

  uninstall delete: [
    "~/Library/Application Support/EasyEDA",
    "~/Library/Logs/EasyEDA",
    "~/Library/Preferences/com.easyeda.editor.helper.plist",
    "~/Library/Preferences/com.easyeda.editor.plist",
    "~/Library/Saved Application State/com.easyeda.editor.savedState",
  ]
end
