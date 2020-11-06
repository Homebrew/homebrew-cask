cask "blackhole" do
  version "0.2.6"
  sha256 "fe7a1d677cb44ba4dee2518f04a1fdc7bb3789d27c80c9943190b8bb1dfcbe5e"

  url "https://existential.audio/downloads/BlackHole.v#{version}.pkg"
  appcast "https://github.com/ExistentialAudio/BlackHole/releases.atom"
  name "BlackHole"
  homepage "https://existential.audio/blackhole/"

  pkg "BlackHole.v#{version}.pkg"

  uninstall pkgutil: "audio.existential.BlackHole"
end
