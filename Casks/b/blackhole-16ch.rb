cask "blackhole-16ch" do
  version "0.6.1"
  sha256 "43f39f30ac9c1a455a90840345725ce6e3e2c3f69f69a7aaaf15b1edbf0a9de2"

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

  pkg "BlackHole16ch-#{version}.pkg"

  uninstall quit:    "com.apple.audio.AudioMIDISetup",
            pkgutil: "audio.existential.BlackHole16ch"

  # No zap stanza required

  caveats do
    reboot
  end
end
