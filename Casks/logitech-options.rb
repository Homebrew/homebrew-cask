cask "logitech-options" do
  version "9.40.75"
  sha256 :no_check

  url "https://download01.logi.com/web/ftp/pub/techsupport/options/options_installer.zip",
      verified: "download01.logi.com/"
  name "Logitech Options"
  desc "Powerful and easy-to-use application that aims to enhance your Logitech devices"
  homepage "https://www.logitech.com/product/options"

  depends_on macos: ">= :catalina"

  app "Logi Options.app"

  uninstall quit: "Logi Options"

  zap trash: [
    "~/Library/Application Support/Logitech",
    "~/Library/Preferences/com.logitech.Logi-Options.plist",
    "~/Library/Preferences/com.logitech.manager.daemon.plist",
    "~/Library/Preferences/com.logitech.manager.devinfo.plist",
    "~/Library/Preferences/com.logitech.manager.setting.*.plist",
    "~/Library/Saved Application State/com.logitech.Logi-Options.savedState",
    "/Applications/Logi Options.app",
    "/Library/Application Support/Logitech.localized",
  ]
end
