cask "mplabx-ide" do
  version "6.00"
  sha256 "aaebb401dbd9d9e2fd576cc88807f6dee6702b4d2fe0812a0a486e84e49bedd3"

  url "https://ww1.microchip.com/downloads/aemDocuments/documents/DEV/ProductDocuments/SoftwareTools/MPLABX-v#{version}-osx-installer.dmg"
  name "MPLab X IDE"
  desc "IDE for Microchip's microcontrollers and digital signal controllers"
  homepage "https://www.microchip.com/mplab/mplab-x-ide"

  livecheck do
    url :stable
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
