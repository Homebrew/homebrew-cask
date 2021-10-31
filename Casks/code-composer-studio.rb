cask "code-composer-studio" do
  version "11.0.0.00012"
  sha256 "88800a47069513e5171b34b3e9e6e972336d1ba5c00dab6bbd7daade652db4f2"

  url "https://software-dl.ti.com/ccs/esd/CCSv#{version.major}/CCS_#{version.major_minor_patch.dots_to_underscores}/exports/ccs_installer_osx_#{version}.dmg"
  name "Code Composer Studio (CCS)"
  desc "Integrated development environment"
  homepage "https://www.ti.com/tool/CCSTUDIO"

  livecheck do
    url :homepage
    regex(%r{href=.*?/ccs_installer_osx_(\d+(?:\.\d+)+)\.dmg}i)
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
