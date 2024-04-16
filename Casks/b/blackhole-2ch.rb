cask "blackhole-2ch" do
  version "0.6.0"
  sha256 "3e0f8102ed27e3528f0c186927837f9f0d843a26580c2ea7507d7c8ef019eadd"

  url "https://existential.audio/downloads/BlackHole2ch.v#{version}.pkg"
  name "BlackHole 2ch"
  desc "Virtual Audio Driver"
  homepage "https://existential.audio/blackhole/"

  # The upstream website doesn't provide version information. We check GitHub
  # releases as a best guess of when a new version is released.
  livecheck do
    url "https://github.com/ExistentialAudio/BlackHole"
    strategy :github_latest
  end

  pkg "BlackHole2ch.v#{version}.pkg"

  uninstall_postflight do
    system_command "/usr/bin/killall",
                   args:         ["coreaudiod"],
                   sudo:         true,
                   must_succeed: true
  end

  uninstall quit:    "com.apple.audio.AudioMIDISetup",
            pkgutil: "audio.existential.BlackHole2ch"

  # No zap stanza required
end
