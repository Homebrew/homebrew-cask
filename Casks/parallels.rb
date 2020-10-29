cask "parallels" do
  version "16.1.2-49151"
  sha256 "c4a0204d985c34466abc853c6af7f6f27771c41d47c66550db1b87e4b4f6c0ff"

  url "https://download.parallels.com/desktop/v#{version.major}/#{version}/ParallelsDesktop-#{version}.dmg"
  appcast "https://kb.parallels.com/en/125053"
  name "Parallels Desktop"
  desc "Desktop virtualization software"
  homepage "https://www.parallels.com/products/desktop/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Parallels Desktop.app"

  preflight do
    system_command! "chflags",
                    args: ["nohidden", "#{staged_path}/Parallels Desktop.app"]
    system_command! "xattr",
                    args: ["-d", "com.apple.FinderInfo", "#{staged_path}/Parallels Desktop.app"]
  end

  postflight do
    system_command! "#{appdir}/Parallels Desktop.app/Contents/MacOS/inittool",
                    args: ["init"],
                    sudo: true
  end

  uninstall_preflight do
    set_ownership "#{appdir}/Parallels Desktop.app"

    # Kill off leftover services like prl_naptd
    system_command "/usr/bin/pkill",
                   args: ["-f", "#{appdir}/Parallels Desktop.app"],
                   sudo: true
  end

  uninstall_postflight do
    # "Parallels records in the /etc/hosts file have #prl_hostonly in the string."
    #   -- https://kb.parallels.com/en/123300
    system_command! "/usr/bin/sed",
                    args: ["-i", ".orig", "/#prl_hostonly/d", "/etc/hosts"],
                    sudo: true
  end

  uninstall quit: [
    "com.parallels.desktop.console",
    "com.parallels.vm",
  ], kext: [
    # com.parallels.kext.netbridge goes first, because it depends
    # on com.parallels.kext.{hypervisor,vnic}
    "com.parallels.kext.netbridge",
    "com.parallels.kext.hypervisor",
    "com.parallels.kext.vnic",
    "com.parallels.kext.usbconnect",
  ], delete: [
    "/Library/Parallels",
    "/usr/local/bin/prl_convert",
    "/usr/local/bin/prl_disk_tool",
    "/usr/local/bin/prl_perf_ctl",
    "/usr/local/bin/prlcore2dmp",
    "/usr/local/bin/prlctl",
    "/usr/local/bin/prlexec",
    "/usr/local/bin/prlsrvctl",
    "/usr/local/etc/bash_completion.d/prlctl",
    "/usr/local/etc/bash_completion.d/prlsrvctl",
    "/usr/local/share/man/man8/prl_convert.8",
    "/usr/local/share/man/man8/prl_disk_tool.8",
    "/usr/local/share/man/man8/prlctl.8",
    "/usr/local/share/man/man8/prlexec.8",
    "/usr/local/share/man/man8/prlsrvctl.8",
  ]

  zap trash: [
    "~/.parallels_settings",
    "~/Library/Application Scripts/com.parallels.desktop*",
    "~/Library/Caches/com.apple.helpd/Generated/com.parallels.desktop.console.help*",
    "~/Library/Caches/com.parallels.desktop.console",
    "~/Library/Caches/Parallels Software/Parallels Desktop",
    "~/Library/Containers/com.parallels.desktop*",
    "~/Library/Logs/parallels.log",
    "~/Library/Parallels/Parallels Desktop",
    "~/Library/Preferences/com.parallels.desktop.console.LSSharedFileList.plist",
    "~/Library/Preferences/com.parallels.desktop.console.plist",
    "~/Library/Preferences/com.parallels.Parallels Desktop Statistics.plist",
    "~/Library/Preferences/com.parallels.Parallels Desktop Events.plist",
    "~/Library/Preferences/com.parallels.Parallels Desktop.plist",
    "~/Library/Preferences/com.parallels.Parallels.plist",
    "~/Library/Preferences/com.parallels.PDInfo.plist",
  ]
end
