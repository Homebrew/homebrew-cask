cask "mycloud" do
  version "25.50.1083,20251209103938"
  sha256 :no_check

  url "https://filehostdesktopmac.mycloud.ch/myCloudDesktop.dmg"
  name "Swisscom myCloud Desktop"
  desc "Swiss cloud storage desktop app"
  homepage "https://desktop.mycloud.ch/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  installer manual: "myCloud Desktop installer.app"

  uninstall quit:       "ch.swisscom.mycloud.desktop.finder",
            signal:     ["TERM", "ch.swisscom.mycloud.desktop"],
            login_item: "myCloudDesktop",
            pkgutil:    "com.github.tornaia.desktop-client"

  zap trash: [
    "~/Library/Application Support/myCloudDesktop",
    "~/Library/Preferences/ch.swisscom.mycloud.desktop.helper.plist",
    "~/Library/Preferences/ch.swisscom.mycloud.desktop.plist",
  ]
end
