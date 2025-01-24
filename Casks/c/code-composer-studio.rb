cask "code-composer-studio" do
  version "20.0.2.00005"
  sha256 "8a219266d3a625f2ffe8264c770a4e3ddc677e136da49fcef61d6247623783f7"

  url "https://dr-download.ti.com/software-development/ide-configuration-compiler-or-debugger/MD-J1VdearkvK/#{version.major_minor_patch}/CCS_#{version}_mac_x86.dmg"
  name "Code Composer Studio (CCS)"
  desc "Integrated development environment"
  homepage "https://www.ti.com/tool/CCSTUDIO"

  livecheck do
    url :homepage
    regex(/href=.*?CCS[._-]?v?(\d+(?:\.\d+)+)[._-]mac[._-]x86\.dmg/i)
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
