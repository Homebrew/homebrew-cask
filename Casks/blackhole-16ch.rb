cask "blackhole-16ch" do
  version "0.2.7"
  sha256 "5c94413bfc261b589e7d2b38527274b34cc1206ec826252a947ad3850e05e0ad"

  url "https://existential.audio/downloads/BlackHole16ch.v#{version}.pkg"
  appcast "https://github.com/ExistentialAudio/BlackHole/releases.atom"
  name "BlackHole 16ch"
  desc "Virtual Audio Driver"
  homepage "https://existential.audio/blackhole/"

  pkg "BlackHole16ch.v#{version}.pkg"

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
            pkgutil: "audio.existential.BlackHole"
end
