cask "mycloud" do
  version "22.24.4"
  sha256 :no_check

  url "https://filehostdesktopmac.mycloud.ch/myCloudDesktop.dmg"
  name "Swisscom myCloud Desktop"
  desc "Swiss cloud storage desktop app"
  homepage "https://desktop.mycloud.ch/"

  livecheck do
    skip "No version information available"
  end

  depends_on macos: ">= :el_capitan"

  # pkg cannot be installed automatically
  installer manual: "myCloud Desktop installer.pkg"

  uninstall pkgutil:    "com.github.tornaia.desktop-client",
            login_item: "myCloudDesktop",
            quit:       "ch.swisscom.mycloud.desktop.finder",
            signal:     ["TERM", "ch.swisscom.mycloud.desktop"]

  zap trash: [
    "~/Library/Application Support/myCloudDesktop",
    "~/Library/Preferences/ch.swisscom.mycloud.desktop.plist",
    "~/Library/Preferences/ch.swisscom.mycloud.desktop.helper.plist",
  ]
end
