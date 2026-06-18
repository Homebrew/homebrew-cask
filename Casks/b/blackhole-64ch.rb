cask "blackhole-64ch" do
  version "0.7.0"
  sha256 "441ec510570425442f70ea86c4ee60ec9cdf55f16807a2b92c536efe568aebbe"

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
