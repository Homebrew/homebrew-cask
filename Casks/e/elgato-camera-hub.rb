cask "elgato-camera-hub" do
  version "2.2.0.6839"
  sha256 "17edafb44a0be5e0b1343c7f9d309014cd55a680295a5001d0ee435a50e1b96f"

  url "https://edge.elgato.com/egc/macos/echm/#{version.major_minor_patch}/CameraHub_#{version}.pkg"
  name "Elgato Camera Hub"
  desc "Elgato FACECAM configuration tool"
  homepage "https://www.elgato.com/ww/en/s/downloads"

  livecheck do
    url "https://gc-updates.elgato.com/mac/echm-update/final/app-version-check.json.php"
    strategy :json do |json|
      json.dig("Manual", "Version")
    end
  end

  depends_on macos: ">= :big_sur"

  pkg "CameraHub_#{version}.pkg"

  uninstall launchctl: [
              "com.displaylink.loginscreen",
              "com.displaylink.XpcService",
              "com.elgato.CameraHub",
            ],
            quit:      "com.displaylink.DisplayLinkUserAgent",
            signal:    ["TERM", "com.elgato.CameraHub"],
            pkgutil:   [
              "com.displaylink.displaylinkloginscreenext",
              "com.displaylink.displaylinkmanagerapp",
              "com.elgato.CameraHub.Installer",
            ],
            delete:    "/Applications/Elgato Camera Hub.app"

  zap trash: [
    "~/Library/Logs/CameraHub",
    "~/Library/Preferences/com.elgato.CameraHub.plist",
  ]
end
