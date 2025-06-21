cask "elgato-camera-hub" do
  version "2.0.0.5750"
  sha256 "812f74653155ffcce39e36027ebdffe9d1b6cfad97d84b6b5983ca4687988684"

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
              "com.displaylink.XpcService",
              "com.elgato.CameraHub",
            ],
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
