cask "blackhole-2ch" do
  version "0.2.8"
  sha256 "2d834bcd54d35db691c6694cc618ee5df8e683d78fbeed45eb2f0b94545e46b9"

  url "https://existential.audio/downloads/BlackHole2ch.v#{version}.pkg"
  appcast "https://github.com/ExistentialAudio/BlackHole/releases.atom"
  name "BlackHole 2ch"
  desc "Virtual Audio Driver"
  homepage "https://existential.audio/blackhole/"

  pkg "BlackHole2ch.v#{version}.pkg"

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
            pkgutil: "audio.existential.BlackHole2ch"
end
