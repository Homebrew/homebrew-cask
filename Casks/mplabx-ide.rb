cask "mplabx-ide" do
  version "5.50"
  sha256 "6839ceb3d3e276aff3d9f5b3b97c58070881778d8a8eb5428b9cac114b7b9f08"

  url "https://ww1.microchip.com/downloads/en/DeviceDoc/MPLABX-v#{version}-osx-installer.dmg"
  name "MPLab X IDE"
  desc "IDE for Microchip's microcontrollers and digital signal controllers"
  homepage "https://www.microchip.com/mplab/mplab-x-ide"

  livecheck do
    url "https://www.microchip.com/mplabx-ide-osx-installer"
    strategy :header_match
  end

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
