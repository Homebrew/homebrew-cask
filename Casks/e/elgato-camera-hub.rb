cask "elgato-camera-hub" do
  version "2.3.0.7295"
  sha256 "15d91783adf197d356515e604167597853bb1cba77fc73d6485b55d49842dcee"

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

  depends_on macos: :big_sur

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
