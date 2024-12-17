cask "logitech-g-hub" do
  version "2024.9.649333"
  sha256 :no_check

  url "https://download01.logi.com/web/ftp/pub/techsupport/gaming/lghub_installer.zip",
      verified: "download01.logi.com/"
  name "Logitech G HUB"
  desc "Support for Logitech G gear"
  homepage "https://www.logitechg.com/en-us/innovation/g-hub.html"

  livecheck do
    url "https://updates.ghub.logitechg.com/pipeline/v2/update/ghub10/osx/public/update.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true

  installer script: {
    executable: "lghub_installer.app/Contents/MacOS/lghub_installer",
    args:       ["--silent"],
    sudo:       true,
  }

  postflight do
    set_ownership "#{appdir}/lghub.app"
    set_ownership "/Users/Shared/LGHUB"
    set_permissions "#{appdir}/lghub.app", "0755"
  end

  uninstall launchctl: [
              "com.logi.ghub",
              "com.logi.ghub.agent",
              "com.logi.ghub.updater",
            ],
            quit:      [
              "com.logi.ghub",
              "com.logi.ghub.agent",
              "com.logi.ghub.updater",
            ],
            delete:    "/Applications/lghub.app",
            trash:     "/Users/Shared/LGHUB"

  zap trash: [
    "~/Library/Application Support/lghub",
    "~/Library/Caches/com.logi.ghub.installer",
    "~/Library/Preferences/com.logi.ghub.plist",
    "~/Library/Saved Application State/com.logi.ghub.savedState",
  ]
end
