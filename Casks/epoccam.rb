cask "epoccam" do
  version "3.1"
  sha256 "5f4dc54f50fe3280d85f444972138bae8a2009e7de3492e3cd17da341d4f2ae2"

  url "https://edge.elgato.com/egc/macos/epoccam/EpocCam_Installer_#{version.major}_#{version.minor}.pkg"
  name "EpocCam"
  desc "Turn your phone into a webcam"
  homepage "https://www.elgato.com/epoccam"

  pkg "EpocCam_Installer_#{version.major}_#{version.minor}.pkg"

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
