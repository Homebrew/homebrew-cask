cask "epoccam" do
  version "3.4.1"
  sha256 "181be9b2508dbb4f085387336220835f1a82bfee5f0a58245804ce55a5c27344"

  url "https://edge.elgato.com/egc/macos/epoccam/EpocCam_Installer_#{version.dots_to_underscores}.pkg"
  name "EpocCam"
  desc "Turn your phone into a webcam"
  homepage "https://www.elgato.com/epoccam"

  livecheck do
    url "https://www.elgato.com/sites/default/files/downloads.json"
    regex(/EpocCam[._-]Installer[._-]v?(\d+(?:[._]\d+)+)\.pkg/i)
    strategy :page_match do |page, regex|
      url = JSON.parse(page)["epoccam-mac"]["downloadURL"]
      match = url.match(regex)
      next if url.blank? || match.blank?

      match[1].tr("_", ".")
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
