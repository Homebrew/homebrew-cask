cask "blackhole-2ch" do
  version "0.2.7"
  sha256 "7f17c9e7272183f35472d896dd50492033c756ba98379245e62c5b918535c38c"

  url "https://existential.audio/downloads/BlackHole2ch.v#{version}.pkg"
  appcast "https://github.com/ExistentialAudio/BlackHole/releases.atom"
  name "BlackHole 2ch"
  desc "Virtual Audio Driver"
  homepage "https://existential.audio/blackhole/"

  pkg "BlackHole2ch.v#{version}.pkg"

  uninstall pkgutil: "audio.existential.BlackHole"
end
