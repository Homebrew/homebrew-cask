cask "parallels" do
  version "26.2.0-57363"
  sha256 "bf148bcaaa4a69ff1acf0d11bca3011cd6b6c79d0733ac30b7e887f6b3326501"

  url "https://download.parallels.com/desktop/v#{version.major}/#{version}/ParallelsDesktop-#{version}.dmg"
  name "Parallels Desktop"
  desc "Desktop virtualization software"
  homepage "https://www.parallels.com/products/desktop/"

  livecheck do
    url "https://update.parallels.com/desktop/v#{version.major}/parallels/parallels_updates.xml"
    regex(/ParallelsDesktop[._-]v?(\d+(?:[.-]\d+)+)\.dmg/i)
    strategy :xml do |xml, regex|
      url = xml.elements["//FilePath"]&.text&.strip
      match = url.match(regex) if url
      next if match.blank?

      match[1]
    end
  end

  auto_updates true
  conflicts_with cask: [
    "parallels@14",
    "parallels@15",
    "parallels@16",
    "parallels@17",
    "parallels@18",
    "parallels@19",
    "parallels@20",
  ]
  depends_on macos: ">= :ventura"

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

  uninstall signal: ["TERM", "com.parallels.desktop.console"],
            # This will stop parallels desktop if running in background.
            # 'TERM' signal and 'quit:' does not work if parallels desktop is running in background.
            script: {
              executable:   "/usr/bin/pkill",
              args:         ["-TERM", "prl_client_app"],
              must_succeed: false,
            },
            delete: [
              "/Library/Preferences/Parallels",
              "/usr/local/bin/prl_convert",
              "/usr/local/bin/prl_disk_tool",
              "/usr/local/bin/prl_perf_ctl",
              "/usr/local/bin/prlcore2dmp",
              "/usr/local/bin/prlctl",
              "/usr/local/bin/prlexec",
              "/usr/local/bin/prlsrvctl",
            ]

  zap trash: [
        "~/.parallels_settings",
        "~/Applications (Parallels)",
        "~/Library/Application Scripts/*.com.parallels.Desktop",
        "~/Library/Application Scripts/com.parallels.desktop*",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.parallels.desktop.console.sfl*",
        "~/Library/Caches/com.apple.helpd/Generated/com.parallels.desktop.console.help*",
        "~/Library/Caches/com.parallels.desktop.console",
        "~/Library/Caches/Parallels Software/Parallels Desktop",
        "~/Library/Containers/com.parallels.desktop*",
        "~/Library/Group Containers/*.com.parallels.Desktop",
        "~/Library/Logs/parallels.log",
        "~/Library/Parallels/Applications Menus",
        "~/Library/Parallels/Downloads",
        "~/Library/Parallels/Parallels Desktop",
        "~/Library/Preferences/com.parallels.desktop.console.LSSharedFileList.plist",
        "~/Library/Preferences/com.parallels.desktop.console.plist",
        "~/Library/Preferences/com.parallels.Parallels Desktop Events.plist",
        "~/Library/Preferences/com.parallels.Parallels Desktop Statistics.plist",
        "~/Library/Preferences/com.parallels.Parallels Desktop.plist",
        "~/Library/Preferences/com.parallels.Parallels.plist",
        "~/Library/Preferences/com.parallels.PDInfo.plist",
        "~/Library/Preferences/Parallels",
        "~/Library/Saved Application State/com.parallels.desktop.console.savedState",
      ],
      rmdir: [
        "/Users/Shared/Parallels",
        "~/Library/Caches/Parallels Software",
        "~/Library/Parallels",
        "~/Parallels",
      ]
end
