cask "code-composer-studio" do
  version "20.5.1.00012"
  sha256 "f876112060da57eacb924d2352be9f0f9cc4a8ac72ca5d7ab514d7ebbe3e5418"

  url "https://dr-download.ti.com/software-development/ide-configuration-compiler-or-debugger/MD-J1VdearkvK/#{version.major_minor_patch}/CCS_#{version}_mac_x86.dmg"
  name "Code Composer Studio (CCS)"
  desc "Integrated development environment"
  homepage "https://www.ti.com/tool/CCSTUDIO"

  livecheck do
    url "https://www.ti.com/tool/download/CCSTUDIO"
    regex(/href=.*?CCS[._-]?v?(\d+(?:\.\d+)+)[._-]mac[._-]x86\.dmg/i)
  end

  depends_on :macos

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
