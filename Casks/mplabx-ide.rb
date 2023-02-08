cask "mplabx-ide" do
  version "6.05"
  sha256 "13fd0da992178e0962d7c09075d15d85f2a41ad573747c0bb2dc8e1caf7ed696"

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
              "/Applications/microchip/mplabx/#{version}",
              # The below version number needs to be updated
              # manually each time this Cask is updated
              "/Applications/microchip/mplabcomm/3.51.00",
            ],
            rmdir:  [
              "/Applications/microchip/mplabx",
              "/Applications/microchip/mplabcomm",
            ]

  zap trash: "/Applications/microchip"
end
