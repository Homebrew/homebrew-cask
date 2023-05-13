cask "code-composer-studio" do
  version "12.3.0.00005"
  sha256 "146756bb584ac6d4711f597fe9d8aea46d8b39053e0016e087a4ac3523de4d59"

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

  zap trash: [
    "/Applications/TI",
    "~/Library/Preferences/org.eclipse.platform.ide.plist",
    "~/Library/Saved Application State/org.eclipse.platform.ide.savedState",
    "~/ti",
    "~/workspace_v#{version.major}",
  ]
end
