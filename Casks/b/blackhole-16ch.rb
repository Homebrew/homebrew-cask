cask "blackhole-16ch" do
  version "0.7.0"
  sha256 "3c75ee55561c879d67a3435b247040a488802c6064b7c35c99a1897bd20a4397"

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
