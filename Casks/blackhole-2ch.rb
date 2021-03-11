cask "blackhole-2ch" do
  version "0.2.9"
  sha256 "34c7333a7502ad17f62019f10e7d477dbf644bfd7b6203b3f7fe0dd420df86b5"

  url "https://existential.audio/downloads/BlackHole2ch.v#{version}.pkg"
  name "BlackHole 2ch"
  desc "Virtual Audio Driver"
  homepage "https://existential.audio/blackhole/"

  livecheck do
    url "https://github.com/ExistentialAudio/BlackHole"
    strategy :github_latest
  end

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
            pkgutil: "audio.existential.BlackHole"
end
