cask "parallels" do
  if Hardware::CPU.intel?
    version "16.5.0-49183"
    sha256 "e23af6f6ba6213e6f60e34f97df03d66287c17e8c8c7f0913216e8a6dafa52c5"

    livecheck do
      url "https://www.parallels.com/directdownload/pd#{version.major}/intel/"
      strategy :header_match
    end
  else
    version "16.5.0-50692"
    sha256 "029eceae6e348e3257112aa59b63bc5db96288a0846effaa14f4a1e87d77b6c3"

    livecheck do
      url "https://www.parallels.com/directdownload/pd#{version.major}/m1/"
      strategy :header_match
    end
  end

  url "https://download.parallels.com/desktop/v#{version.major}/#{version}/ParallelsDesktop-#{version}.dmg"
  name "Parallels Desktop"
  desc "Desktop virtualization software"
  homepage "https://www.parallels.com/products/desktop/"

  auto_updates true
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
