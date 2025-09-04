cask "code-composer-studio" do
  version "20.3.0.00014"
  sha256 "44fee293659872420fadee3b247d0952bff1dd5346806f8c724be92893ddc518"

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
