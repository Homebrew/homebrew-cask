cask "blackhole-64ch" do
  version "0.5.0"
  sha256 "7943397be3907e23d146ecfb6c3740220d2d35605cd23dcade65dc8bcb5da822"

  url "https://existential.audio/downloads/BlackHole64ch.v#{version}.pkg"
  name "BlackHole 64ch"
  desc "Virtual Audio Driver"
  homepage "https://existential.audio/blackhole/"

  livecheck do
    url "https://github.com/ExistentialAudio/BlackHole"
    strategy :github_latest
  end

  pkg "BlackHole64ch.v#{version}.pkg"

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

  uninstall quit:    "com.apple.audio.AudioMIDISetup",
            pkgutil: "audio.existential.BlackHole64ch"
end
