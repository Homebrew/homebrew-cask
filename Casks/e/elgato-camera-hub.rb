cask "elgato-camera-hub" do
  version "2.2.1.6945"
  sha256 "1d87d17ba63ba3334a1f728b13307a9c80734147733e1186284eab52d553d84f"

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
