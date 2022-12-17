cask "code-composer-studio" do
  version "12.1.0.00007"
  sha256 "48d13242c6cf77b486c3c7911d15baf9251752b1abe9481c80a8cec5477e6297"

  url "https://dr-download.ti.com/software-development/ide-configuration-compiler-or-debugger/MD-J1VdearkvK/#{version.major_minor_patch}/ccs_installer_osx_#{version}.dmg"
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
