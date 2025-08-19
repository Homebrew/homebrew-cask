cask "elgato-camera-hub" do
  version "2.1.1.6518"
  sha256 "1e31c588b043194f9004fc52e40e6eec172fb1988da59ec9fe57b32bda0a7721"

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
