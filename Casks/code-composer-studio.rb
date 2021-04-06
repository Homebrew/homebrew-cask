cask "code-composer-studio" do
  version "10.2.0.00009"
  sha256 "3d1e8495ff68251e915293370eb932344a4c401eed398fb0d8eb93b2f47dd8bf"

  url "https://software-dl.ti.com/ccs/esd/CCSv10/CCS_#{version.major_minor_patch.dots_to_underscores}/exports/ccs_installer_osx_#{version}.dmg"
  name "Code Composer Studio (CCS)"
  desc "Integrated development environment"
  homepage "https://www.ti.com/tool/CCSTUDIO"

  livecheck do
    url :homepage
    regex(%r{href=.*?/ccs_installer_osx_(\d+(?:\.\d+)*)\.dmg}i)
  end

  installer script: {
    executable: "ccs_setup_#{version}.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended", "--prefix", "/Applications/TI"],
  }

  uninstall script: {
    executable: "/Applications/TI/ccs/uninstall_ccs.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }
end
