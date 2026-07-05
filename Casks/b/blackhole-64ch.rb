cask "blackhole-64ch" do
  version "0.7.1"
  sha256 "586b614cffb8b84ac39b2b926b69d5416ab9a4d64c63217b71ce2f5f5d7aabd1"

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

  depends_on :macos

  pkg "BlackHole64ch-#{version}.pkg"

  uninstall quit:    "com.apple.audio.AudioMIDISetup",
            pkgutil: "audio.existential.BlackHole64ch"

  # No zap stanza required

  caveats do
    reboot
  end
end
