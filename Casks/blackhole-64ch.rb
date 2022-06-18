cask "blackhole-64ch" do
  version "0.4.0"
  sha256 "faa3c76eb4129b67a3568f22b224219e1b8da4b6df32bd627d3eaf47ca582141"

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
