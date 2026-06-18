cask "blackhole-2ch" do
  version "0.7.0"
  sha256 "a4a44ae3c2a89577b046886a5605f76dc78a3a08a627d59f22ead60f6434c37c"

  url "https://existential.audio/downloads/BlackHole2ch-#{version}.pkg"
  name "BlackHole 2ch"
  desc "Virtual Audio Driver"
  homepage "https://existential.audio/blackhole/"

  # The upstream website doesn't provide version information. We check GitHub
  # releases as a best guess of when a new version is released.
  livecheck do
    url "https://github.com/ExistentialAudio/BlackHole"
    strategy :github_latest
  end

  depends_on :macos

  pkg "BlackHole2ch-#{version}.pkg"

  uninstall quit:    "com.apple.audio.AudioMIDISetup",
            pkgutil: "audio.existential.BlackHole2ch"

  # No zap stanza required

  caveats do
    reboot
  end
end
