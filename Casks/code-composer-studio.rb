cask "code-composer-studio" do
  version "10.3.1.00003"
  sha256 "02a78731bd617d7e29ab306e70f2faaf9cabfcc53402dc7d5f5649f048be535d"

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
