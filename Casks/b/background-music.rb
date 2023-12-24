cask "background-music" do
  version "0.4.0"
  sha256 "f170957702c48f96c0fa9706b72f6d6048bcc87be393eb1d01289c20e1111325"

  url "https://github.com/kyleneideck/BackgroundMusic/releases/download/v#{version}/BackgroundMusic-#{version}.pkg"
  name "Background Music"
  desc "Audio utility"
  homepage "https://github.com/kyleneideck/BackgroundMusic"

  livecheck do
    url :url
    strategy :github_latest
  end

  pkg "BackgroundMusic-#{version}.pkg"

  uninstall_postflight do
    system_command "/bin/launchctl",
                   args:         [
                     "kickstart",
                     "-kp",
                     "system/com.apple.audio.coreaudiod",
                   ],
                   sudo:         true,
                   must_succeed: true
  end

  uninstall launchctl: "com.bearisdriving.BGM.XPCHelper",
            quit:      "com.bearisdriving.BGM.App",
            pkgutil:   "com.bearisdriving.BGM",
            delete:    [
              "/Library/Application Support/Background Music",
              "/Library/Audio/Plug-Ins/HAL/Background Music Device.driver",
              "/usr/local/libexec/BGMXPCHelper.xpc",
            ]

  zap trash: [
    "/Library/LaunchDaemons/com.bearisdriving.BGM.XPCHelper.plist",
    "~/Library/Preferences/com.bearisdriving.BGM.App.plist",
  ]
end
