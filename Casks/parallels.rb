cask "parallels" do
  version "17.1.1-51537"
  sha256 "bd7be2df4d1b3508c127cf1d9c1ef93cdda63384bcf3893a77fbc9f1169765a9"

  url "https://download.parallels.com/desktop/v#{version.major}/#{version}/ParallelsDesktop-#{version}.dmg"
  name "Parallels Desktop"
  desc "Desktop virtualization software"
  homepage "https://www.parallels.com/products/desktop/"

  livecheck do
    url "https://www.parallels.com/directdownload/pd#{version.major}/image/"
    strategy :header_match
  end

  auto_updates true
  conflicts_with cask: [
    "homebrew/cask-versions/parallels12",
    "homebrew/cask-versions/parallels13",
    "homebrew/cask-versions/parallels14",
    "homebrew/cask-versions/parallels15",
    "homebrew/cask-versions/parallels16",
  ]
  depends_on macos: ">= :high_sierra"

  app "Parallels Desktop.app"

  preflight do
    system_command "chflags",
                   args: ["nohidden", "#{staged_path}/Parallels Desktop.app"]
    system_command "xattr",
                   args: ["-d", "com.apple.FinderInfo", "#{staged_path}/Parallels Desktop.app"]
  end

  postflight do
    system_command "#{appdir}/Parallels Desktop.app/Contents/MacOS/inittool",
                   args: ["init"],
                   sudo: true
  end

  uninstall_preflight do
    set_ownership "#{appdir}/Parallels Desktop.app"
  end

  uninstall delete: [
    "/usr/local/bin/prl_convert",
    "/usr/local/bin/prl_disk_tool",
    "/usr/local/bin/prl_perf_ctl",
    "/usr/local/bin/prlcore2dmp",
    "/usr/local/bin/prlctl",
    "/usr/local/bin/prlexec",
    "/usr/local/bin/prlsrvctl",
    "/Library/Preferences/Parallels",
  ],
            signal: ["TERM", "com.parallels.desktop.console"]

  zap trash: [
    "~/.parallels_settings",
    "~/Applications (Parallels)",
    "~/Library/Application Scripts/*.com.parallels.Desktop",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.parallels.desktop.console.sfl*",
    "~/Library/Application Scripts/com.parallels.desktop*",
    "~/Library/Caches/com.apple.helpd/Generated/com.parallels.desktop.console.help*",
    "~/Library/Caches/com.parallels.desktop.console",
    "~/Library/Caches/Parallels Software/Parallels Desktop",
    "~/Library/Containers/com.parallels.desktop*",
    "~/Library/Group Containers/*.com.parallels.Desktop",
    "~/Library/Logs/parallels.log",
    "~/Library/Parallels/Applications Menus",
    "~/Library/Parallels/Parallels Desktop",
    "~/Library/Preferences/com.parallels.desktop.console.LSSharedFileList.plist",
    "~/Library/Preferences/com.parallels.desktop.console.plist",
    "~/Library/Preferences/com.parallels.Parallels Desktop Statistics.plist",
    "~/Library/Preferences/com.parallels.Parallels Desktop Events.plist",
    "~/Library/Preferences/com.parallels.Parallels Desktop.plist",
    "~/Library/Preferences/com.parallels.Parallels.plist",
    "~/Library/Preferences/com.parallels.PDInfo.plist",
    "~/Library/Preferences/Parallels",
    "~/Library/Saved Application State/com.parallels.desktop.console.savedState",
  ], rmdir: [
    "/Users/Shared/Parallels",
    "~/Library/Caches/Parallels Software",
    "~/Library/Parallels",
    "~/Parallels",
  ]
end
