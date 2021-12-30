cask "mycloud" do
  version "21.26.6"
  sha256 :no_check

  url "https://filehostdesktopmac.mycloud.ch/myCloudDesktop.dmg"
  name "Swisscom myCloud Desktop"
  desc "Swiss cloud storage desktop app"
  homepage "https://desktop.mycloud.ch/"

  livecheck do
    url "https://help.mycloud.ch/hc/en-us/articles/115001202054-What-are-the-release-notes-for-myCloud-Desktop-"
    regex(/<strong>myCloud Desktop Version (\d+(?:\.\d+)+)</i)
  end

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
