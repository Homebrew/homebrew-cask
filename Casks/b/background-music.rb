cask "background-music" do
  version "0.5.0"
  sha256 "c7742b48ac2e9ea955fea66e5c13bb56be5f1487e0b12bad93820984bccb69ef"

  url "https://github.com/kyleneideck/BackgroundMusic/releases/download/v#{version}/BackgroundMusic-#{version}.pkg"
  name "Background Music"
  desc "Audio utility"
  homepage "https://github.com/kyleneideck/BackgroundMusic"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  pkg "BackgroundMusic-#{version}.pkg"

  uninstall_postflight_steps do
    terminate_process "coreaudiod", sudo: true, must_succeed: true
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
