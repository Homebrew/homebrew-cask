cask "code-composer-studio" do
  version "10.3.0.00007"
  sha256 "71ef237c3f69336f1121fe97a27096d465ab2d01c044787ffcb471cac2c0e030"

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
