cask "fl-studio" do
  version "26.1.7.5419"
  sha256 "b93e2936efd9474a0168c071d80c3b4b1c4b8b313ddbbdd944ce662a1e684619"

  url "https://install.image-line.com/flstudio/flstudio_mac_#{version}.dmg"
  name "FL Studio"
  desc "Digital audio production application"
  homepage "https://www.image-line.com/fl-studio/"

  livecheck do
    url "https://support.image-line.com/redirect/flstudio_mac_installer"
    strategy :header_match
  end

  depends_on :macos

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
    "~/Library/WebKit/com.image-line.flstudio",
  ]
end
