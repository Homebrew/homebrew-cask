cask "code-composer-studio" do
  version "20.4.1.00004"
  sha256 "4f1950f3159334226fe10f81ced953f1417a95b5a3e93b55daefdbc320437be5"

  url "https://dr-download.ti.com/software-development/ide-configuration-compiler-or-debugger/MD-J1VdearkvK/#{version.major_minor_patch}/CCS_#{version}_mac_x86.dmg"
  name "Code Composer Studio (CCS)"
  desc "Integrated development environment"
  homepage "https://www.ti.com/tool/CCSTUDIO"

  livecheck do
    url "https://www.ti.com/tool/download/CCSTUDIO"
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
