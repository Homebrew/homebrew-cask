cask "blackhole-16ch" do
  version "0.6.0"
  sha256 "fa536793ca7d1e759b069f566d574386c1c0ee7b86a710ba3fc4d405c194bd8d"

  url "https://existential.audio/downloads/BlackHole16ch.v#{version}.pkg"
  name "BlackHole 16ch"
  desc "Virtual Audio Driver"
  homepage "https://existential.audio/blackhole/"

  # The upstream website doesn't provide version information. We check GitHub
  # releases as a best guess of when a new version is released.
  livecheck do
    url "https://github.com/ExistentialAudio/BlackHole"
    strategy :github_latest
  end

  pkg "BlackHole16ch.v#{version}.pkg"

  uninstall_postflight do
    system_command "/usr/bin/killall",
                   args:         ["coreaudiod"],
                   sudo:         true,
                   must_succeed: true
  end

  uninstall quit:    "com.apple.audio.AudioMIDISetup",
            pkgutil: "audio.existential.BlackHole16ch"

  # No zap stanza required
end
