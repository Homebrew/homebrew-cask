cask "code-composer-studio" do
  version "11.2.0.00007"
  sha256 "3881536501845c6ce1de0c1cbc16302dcc470657ef19971bdaa10e14ee61790a"

  url "https://software-dl.ti.com/ccs/esd/CCSv#{version.major}/CCS_#{version.major_minor_patch.dots_to_underscores}/exports/ccs_installer_osx_#{version}.dmg"
  name "Code Composer Studio (CCS)"
  desc "Integrated development environment"
  homepage "https://www.ti.com/tool/CCSTUDIO"

  livecheck do
    url :homepage
    regex(/href=.*?ccs[._-]installer[._-]osx[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
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
