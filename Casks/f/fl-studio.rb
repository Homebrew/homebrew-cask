cask "fl-studio" do
  version "24.1.2.4074"
  sha256 "9171e4d1d11311744ab84e96a591d474a80d9fe83e3054682acfdafc21bba36a"

  url "https://demodownload.image-line.com/flstudio/flstudio_mac_#{version}.dmg",
      referer:    "https://www.image-line.com/fl-studio-download/",
      user_agent: :browser
  name "FL Studio"
  desc "Digital audio production application"
  homepage "https://www.image-line.com/flstudio/"

  disable! date: "2024-12-16", because: "cannot be reliably fetched due to Clouflare protections"

  pkg "Install FL Studio.pkg"

  uninstall launchctl: "com.image-line.flc-install-helper-socket",
            pkgutil:   [
              "com.image-line.fl-cloud-plugins.app",
              "com.image-line.fl-cloud-plugins.launchDaemon",
              "com.Image-Line.pkg.#{version.major}ONLINE",
              "com.Image-Line.pkg.flcloud.plugins",
            ],
            delete:    "/Applications/FL Cloud Plugins.app"

  zap trash: [
    "~/Library/Caches/com.image-line.flstudio",
    "~/Library/HTTPStorages/com.image-line.flstudio",
    "~/Library/Preferences/com.image-line.flstudio.plist",
    "~/Library/Saved Application State/com.image-line.flstudio.savedState",
  ]
end
