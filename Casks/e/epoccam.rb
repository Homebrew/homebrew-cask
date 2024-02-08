cask "epoccam" do
  version "3.4.1"
  sha256 "181be9b2508dbb4f085387336220835f1a82bfee5f0a58245804ce55a5c27344"

  url "https://edge.elgato.com/egc/macos/epoccam/EpocCam_Installer_#{version.dots_to_underscores}.pkg"
  name "EpocCam"
  desc "Turn your phone into a webcam"
  homepage "https://www.elgato.com/ww/en/s/downloads"

  livecheck do
    url "https://help.elgato.com/api/v2/help_center/en-us/articles/360052826852.json"
    strategy :page_match do |page|
      match = page[/EpocCam[._-]Installer[._-]v?(\d+(?:[._]\d+)+)\.pkg/i, 1]
      next if match.blank?

      match.tr("_", ".")
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
              "/Library/Audio/Plug-Ins/HAL/VirtualMic.driver",
              "/Library/CoreMediaIO/Plug-Ins/DAL/EpocCamPlugin.plugin",
              "/Library/LaunchAgents/com.kinoni.epoccam.daemon.plist",
            ]
end
