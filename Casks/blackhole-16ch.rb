cask "blackhole-16ch" do
  version "0.2.8"
  sha256 "0cf495206c60e60a45e91f52fac059242fd9cb135feeb8fd75b77a77be1d04dd"

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
            pkgutil: "audio.existential.BlackHole16ch"
end
