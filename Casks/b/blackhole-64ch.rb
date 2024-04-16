cask "blackhole-64ch" do
  version "0.6.0"
  sha256 "7c1bdad59ba1b732bacaa53ddcfd5e7d965cdc4c5a9231317f56cf4f563ecf59"

  url "https://existential.audio/downloads/BlackHole64ch-#{version}.pkg"
  name "BlackHole 64ch"
  desc "Virtual Audio Driver"
  homepage "https://existential.audio/blackhole/"

  # The upstream website doesn't provide version information. We check GitHub
  # releases as a best guess of when a new version is released.
  livecheck do
    url "https://github.com/ExistentialAudio/BlackHole"
    strategy :github_latest
  end

  pkg "BlackHole64ch-#{version}.pkg"

  uninstall_postflight do
    system_command "/usr/bin/killall",
                   args:         ["coreaudiod"],
                   sudo:         true,
                   must_succeed: true
  end

  uninstall quit:    "com.apple.audio.AudioMIDISetup",
            pkgutil: "audio.existential.BlackHole64ch"

  # No zap stanza required
end
