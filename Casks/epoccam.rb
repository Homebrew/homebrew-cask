cask "epoccam" do
  version "3.3"
  sha256 "a676c29ea85cac2d7568de554f946bfa7523a8acd49f488034c1a0a1a50d8d39"

  url "https://edge.elgato.com/egc/macos/epoccam/EpocCam_Installer_#{version.dots_to_underscores}.pkg"
  name "EpocCam"
  desc "Turn your phone into a webcam"
  homepage "https://www.elgato.com/epoccam"

  livecheck do
    url "https://www.elgato.com/sites/default/files/downloads.json"
    strategy :page_match do |page|
      JSON.parse(page)["epoccam-mac"]["version"]
    end
  end

  pkg "EpocCam_Installer_#{version.dots_to_underscores}.pkg"

  uninstall_preflight do
    set_ownership "/Library/Audio/Plug-Ins/HAL/VirtualMic.driver"
    set_ownership "/Library/CoreMediaIO/Plug-Ins/DAL/EpocCamPlugin.plugin"
  end

  uninstall launchctl: "com.kinoni.epoccam.daemon",
            pkgutil:   "com.kinoni.pkg.epoccam-installer",
            trash:     [
              "/Library/LaunchAgents/com.kinoni.epoccam.daemon.plist",
              "/Library/Audio/Plug-Ins/HAL/VirtualMic.driver",
              "/Library/CoreMediaIO/Plug-Ins/DAL/EpocCamPlugin.plugin",
            ]
end
