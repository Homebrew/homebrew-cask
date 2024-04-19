cask "elgato-camera-hub" do
  version "1.10.0.3053"
  sha256 "059f4efa573365235e82bff045dd2b7e6408e4ae050b923b6e573abaac72b799"

  url "https://edge.elgato.com/egc/macos/echm/#{version.major_minor}/Camera_Hub_#{version}.pkg"
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

  pkg "Camera_Hub_#{version}.pkg"

  uninstall launchctl: "com.elgato.CameraHub",
            quit:      "com.displaylink.DisplayLinkUserAgent",
            signal:    ["TERM", "com.elgato.CameraHub"],
            pkgutil:   [
              "com.displaylink.displaylinkmanagerapp",
              "com.elgato.CameraHub.Installer",
            ],
            delete:    "/Applications/Elgato Camera Hub.app"

  zap trash: [
    "~/Library/Logs/CameraHub",
    "~/Library/Preferences/com.elgato.CameraHub.plist",
  ]
end
