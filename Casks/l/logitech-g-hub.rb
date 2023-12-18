cask "logitech-g-hub" do
  version "2023.10.493254"
  sha256 :no_check

  url "https://download01.logi.com/web/ftp/pub/techsupport/gaming/lghub_installer.zip",
      verified: "download01.logi.com/"
  name "Logitech G HUB"
  desc "Support for Logitech G gear"
  homepage "https://www.logitechg.com/en-us/innovation/g-hub.html"

  livecheck do
    url "https://support.logi.com/api/v2/help_center/en-us/articles.json?label_names=webcontent=productdownload,websoftware=eee3033c-8e0b-11e9-8db1-d7e925481d4d"
    regex(/Software\sVersion:.+?(\d+(?:\.\d+)+)\\u/i)
  end

  auto_updates true

  installer script: {
    executable: "lghub_installer.app/Contents/MacOS/lghub_installer",
    args:       ["--silent"],
    sudo:       true,
  }

  postflight do
    set_ownership   ["#{appdir}/lghub.app", "/Users/Shared/LGHUB"]
    set_permissions "#{appdir}/lghub.app", "0755"
  end

  uninstall script: {
              executable: "/Applications/lghub.app/Contents/MacOS/lghub_updater.app/Contents/MacOS/lghub_updater",
              args:       ["--uninstall"],
              sudo:       true,
            },
            delete: "/Applications/lghub.app",
            trash:  "/Users/Shared/LGHUB"

  zap trash: [
    "~/Library/Application Support/lghub",
    "~/Library/Caches/com.logi.ghub.installer",
    "~/Library/Preferences/com.logi.ghub.plist",
    "~/Library/Saved Application State/com.logi.ghub.savedState",
  ]
end
