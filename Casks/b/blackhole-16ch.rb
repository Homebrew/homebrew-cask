cask "blackhole-16ch" do
  version "0.7.1"
  sha256 "57254e2f76cd40db7f3f715238b1a2cb2bd08819d38abf4087f2944f71a3641a"

  url "https://existential.audio/downloads/BlackHole16ch-#{version}.pkg"
  name "BlackHole 16ch"
  desc "Virtual Audio Driver"
  homepage "https://existential.audio/blackhole/"

  # The upstream website doesn't provide version information. We check GitHub
  # releases as a best guess of when a new version is released.
  livecheck do
    url "https://github.com/ExistentialAudio/BlackHole"
    strategy :github_latest
  end

  depends_on :macos

  pkg "BlackHole16ch-#{version}.pkg"

  uninstall quit:    "com.apple.audio.AudioMIDISetup",
            pkgutil: "audio.existential.BlackHole16ch"

  # No zap stanza required

  caveats do
    reboot
  end
end
