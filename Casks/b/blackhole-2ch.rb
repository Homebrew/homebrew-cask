cask "blackhole-2ch" do
  version "0.7.1"
  sha256 "57b540f27a3e29c37e310e01bee0fdfab76733087e47f997ef9dccf851400dcf"

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
