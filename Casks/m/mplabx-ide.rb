cask "mplabx-ide" do
  version "6.20"
  sha256 "18ba349f93f1f18ddae57cbbe8f52418ece2969a2154fa892acb7216fdb9a537"

  url "https://ww1.microchip.com/downloads/aemDocuments/documents/DEV/ProductDocuments/SoftwareTools/MPLABX-v#{version}-osx-installer.dmg",
      referer: "https://www.microchip.com/"
  name "MPLab X IDE"
  desc "IDE for Microchip's microcontrollers and digital signal controllers"
  homepage "https://www.microchip.com/en-us/tools-resources/develop/mplab-x-ide"

  livecheck do
    url :homepage
    regex(/href=.*?MPLABX[._-]v?(\d+(?:\.\d+)+)-osx-installer\.dmg/i)
  end

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
      "--collectMyMicrochipInfo", "0",
      "--installdir", staged_path.to_s
    ],
    input:      ["y"],
    sudo:       true,
  }

  # staged_path files are owned by root which prevents binaries from being moved
  # to appdir, as cp does not use sudo. This copies the binaries after the owner
  # is changed.
  postflight do
    set_ownership staged_path.to_s
    system_command "mkdir",
                   args: ["-p", "#{appdir}/microchip/mplabx/#{version}"],
                   sudo: true

    system_command "cp",
                   args: [
                     "-pR",
                     "#{staged_path}/MPLAB IPE v#{version}.app",
                     "#{staged_path}/MPLAB X IDE v#{version}.app",
                     "#{appdir}/microchip/mplabx/#{version}/",
                   ],
                   sudo: true

    set_ownership "/Applications/microchip/mplabx/#{version}"
  end

  uninstall script: {
              executable: "Uninstall_MPLAB_X_IDE_v#{version}.app/Contents/MacOS/installbuilder.sh",
              args:       ["--mode", "unattended"],
              input:      ["y", 3],
              sudo:       true,
            },
            delete: [
              # The below version number needs to be updated manually each time this Cask is updated
              "/Applications/microchip/mplabcomm/3.53.00",
              "/Applications/microchip/mplabx/#{version}",
            ],
            rmdir:  [
              "/Applications/microchip/mplabcomm",
              "/Applications/microchip/mplabx",
            ]

  zap trash: "/Applications/microchip"
end
