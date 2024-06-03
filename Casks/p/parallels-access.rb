cask "parallels-access" do
  version "7.0.5-40851"
  sha256 "663ee5e79e1cace49baf217b2fba61cdbd0746a920dca589520accf545afdce9"

  url "https://download.parallels.com/pmobile/v#{version.major}/#{version}/ParallelsAccess-#{version}-mac.dmg"
  name "Parallels Access"
  desc "Simplest remote access to your computer from anywhere"
  homepage "https://www.parallels.com/products/access/"

  disable! date: "2024-06-04", because: :no_longer_available

  # This .dmg cannot be extracted normally
  # Original discussion: https://github.com/Homebrew/homebrew-cask/issues/26872
  container type: :naked

  preflight do
    system_command "/usr/bin/hdiutil",
                   args: ["attach", "-nobrowse", "#{staged_path}/ParallelsAccess-#{version}-mac.dmg"]
    system_command "/Volumes/Parallels Access/Parallels Access.app/Contents/MacOS/pm_ctl",
                   args: ["instance_install"],
                   sudo: true
    system_command "/usr/bin/hdiutil",
                   args: ["detach", "/Volumes/Parallels Access"]
  end

  uninstall launchctl: [
              "com.parallels.mobile.audioloader",
              "com.parallels.mobile.dispatcher.launchdaemon",
              "com.parallels.mobile.kextloader.launchdaemon",
              "com.parallels.mobile.prl_deskctl_agent.launchagent",
              "com.parallels.mobile.startgui.launchagent",
            ],
            quit:      "com.parallels.inputmethod.ParallelsIM",
            signal:    [
              ["TERM", "com.parallels.mobile"],
              ["TERM", "com.parallels.mobile.prl_deskctl_agent"],
            ],
            kext:      [
              "com.parallels.virtualhid",
              "com.parallels.virtualsound",
            ],
            delete:    "/Applications/Parallels Access.app"

  zap trash: [
    "~/Library/Cookies/com.parallels.mobile.prl_deskctl_agent.binarycookies",
    "~/Library/Group Containers/4C6364ACXT.com.parallels.Access",
    "~/Library/Preferences/com.parallels.mobile.plist",
    "~/Library/Preferences/com.parallels.Parallels Access.plist",
    "~/Library/Preferences/com.parallels.Parallels Access.plist.sdb",
  ]
end
