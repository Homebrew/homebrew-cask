cask "background-music" do
  version "0.3.2"
  sha256 "0cd7b488b5ab97a1ecb496e484a6c209c29f35ab503e6f73b45e56719a7aba18"

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

  uninstall delete:    [
    "/Library/Application Support/Background Music",
    "/Library/Audio/Plug-Ins/HAL/Background Music Device.driver",
    "/usr/local/libexec/BGMXPCHelper.xpc",
  ],
            pkgutil:   "com.bearisdriving.BGM",
            quit:      "com.bearisdriving.BGM.App",
            launchctl: "com.bearisdriving.BGM.XPCHelper"

  zap trash: "~/Library/Preferences/com.bearisdriving.BGM.App.plist"
end
