cask "mplabx-ide" do
  version "6.10"
  sha256 "47aaf96a936fb354f7e3d2f7b515862c4baf02d07429c6c5d28d60ef868d37ec"

  url "https://ww1.microchip.com/downloads/aemDocuments/documents/DEV/ProductDocuments/SoftwareTools/MPLABX-v#{version}-osx-installer.dmg"
  name "MPLab X IDE"
  desc "IDE for Microchip's microcontrollers and digital signal controllers"
  homepage "https://www.microchip.com/en-us/development-tools-tools-and-software/mplab-x-ide"

  livecheck do
    url :homepage
    regex(/href=.*?MPLABX[._-]v?(\d+(?:\.\d+)+)-osx-installer\.dmg/i)
  end

  app "MPLAB IPE v#{version}.app", target: "microchip/mplabx/#{version}/MPLAB IPE v#{version}.app"
  app "MPLAB X IDE v#{version}.app", target: "microchip/mplabx/#{version}/MPLAB X IDE v#{version}.app"
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
    set_ownership "/Applications/microchip/mplabx/#{version}"
  end

  uninstall script: {
              executable: "Uninstall_MPLAB_X_IDE_v#{version}.app/Contents/MacOS/installbuilder.sh",
              args:       ["--mode", "unattended"],
              input:      ["y", 3],
              sudo:       true,
            },
            delete: [            
              "/Applications/microchip/mplabcomm",
              "/Applications/microchip/mplabx",
            ]

  zap trash: "/Applications/microchip"
end
