cask "epoccam" do
  version "3.0"
  sha256 "302ca7ac266dad1cc7bbc306613bfd71ffe02519f7f8428756fb4d40968bd10d"

  url "https://edge.elgato.com/egc/macos/epoccam/EpocCam%20Installer_#{version.major}_#{version.minor}.pkg"
  name "EpocCam"
  desc "Turn your phone into a webcam"
  homepage "https://www.elgato.com/epoccam"

  pkg "EpocCam Installer_#{version.major}_#{version.minor}.pkg"

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
