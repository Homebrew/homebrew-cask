cask "code-composer-studio" do
  version "10.4.0.00006"
  sha256 "819579753408fa0e1ee0be7a1e2bea6a1e470907e45174ab5fe64fb62ad6d14c"

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
