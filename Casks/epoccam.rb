cask "epoccam" do
  version "3.4.0"
  sha256 "176be15ccf03f8166733237862c40d7837af7dce5893d06a649d7816cca0af3b"

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
