cask "immersed" do
  version "16.1,134"
  sha256 :no_check

  url "https://immersed.com/dl/Immersed.dmg"
  name "Immersed"
  desc "Desktop Agent for VR Office"
  homepage "https://immersed.com/"

  livecheck do
    url "https://immersed.com/dl/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Immersed.app"

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

  uninstall delete: [
    "/Library/Audio/Plug-Ins/HAL/ImmersedAudio.driver",
    "/Library/CoreMediaIO/Plug-Ins/DAL/ImmersedCamera.plugin",
  ],
            quit:   "team.Immersed"

  zap trash: [
    "~/Library/Application Support/Immersed",
    "~/Library/Caches/team.Immersed",
    "~/Library/Preferences/team.Immersed.plist",
  ]
end
