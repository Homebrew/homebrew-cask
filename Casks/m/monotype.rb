cask "monotype" do
  version "6.4.3"
  sha256 "d0ff2cd3bd0b6cb38e081e701c892931b11e4653902577de8e501a204a4ba5b1"

  url "https://monotypeapp.monotype.com/release/#{version.no_dots}/mac/system/DTAppInstaller.tar.tgz"
  name "Monotype Desktop App"
  desc "Font finder and organizer"
  homepage "https://support.monotype.com/en/articles/7860542-monotype-desktop-app"

  livecheck do
    url "https://support.monotype.com/en/articles/7859464-release-notes"
    regex(/<p>Version\s*v?(\d+(?:\.\d+)+)[ "<]/i)
  end

  installer script: {
    executable: "#{staged_path}/DTAppInstaller.app/Contents/MacOS/installbuilder.sh",
    sudo:       true,
  }

  uninstall script: {
    executable: "/Applications/Monotype desktop app/uninstall.app/Contents/MacOS/installbuilder.sh",
    sudo:       true,
  }

  zap trash: [
    "~/Library/Application Scripts/com.monotype.notification-service",
    "~/Library/Containers/com.monotype.notification-service",
    "~/Library/Preferences/com.monotype.monotype-desktop-app.plist",
    "~/Library/Preferences/com.monotype.monotype-fonts-app-helper.plist",
    "~/Library/Saved Application State/com.monotype.monotype-desktop-app.savedState",
  ]
end
