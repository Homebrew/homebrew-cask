cask "mplabx-ide" do
  version "5.45"
  sha256 "6a0422ff70cd3232f27267baf7a7b41b7a82e42103cf2ec98f2e83d4d45d358f"

  url "https://ww1.microchip.com/downloads/en/DeviceDoc/MPLABX-v#{version}-osx-installer.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.microchip.com/mplabx-ide-osx-installer"
  name "MPLab X IDE"
  homepage "https://www.microchip.com/mplab/mplab-x-ide"

  app "mplab_ide.app", target: "microchip/mplab_ide.app"
  app "mplab_ipe.app", target: "microchip/mplab_ipe.app"
  installer script: {
    executable: "MPLABX-v#{version}-osx-installer.app/Contents/MacOS/installbuilder.sh",
    args:       [
      "--mode", "unattended",
      "--unattendedmodeui", "none",
      "--ide", "1",
      "--ipe", "1",
      "--othermcu", "0",
      "--exepermission", "no",
      "--collectInfo", "0",
      "--installdir", staged_path.to_s
    ],
    input:      ["y"],
    sudo:       true,
  }

  postflight do
    set_ownership staged_path.to_s
    set_ownership "/Applications/microchip"
  end

  uninstall script: {
    executable: "Uninstall_MPLAB_X_IDE_v#{version}.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    input:      ["y", 3],
    sudo:       true,
  },
            delete: "/Applications/microchip"
end
