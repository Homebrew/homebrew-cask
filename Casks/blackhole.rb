cask 'blackhole' do
  version '0.2.4'
  sha256 'b5acf234dca38b56fbfb7192218859930b984bc1f94b4ee7aea2c48c1321b19d'

  url "https://github.com/ExistentialAudio/BlackHole/releases/download/v#{version}/BlackHole.v#{version}.pkg"
  appcast 'https://github.com/ExistentialAudio/BlackHole/releases.atom'
  name 'BlackHole'
  homepage 'https://github.com/ExistentialAudio/BlackHole'

  pkg "BlackHole.v#{version}.pkg"

  uninstall pkgutil: 'audio.existential.BlackHole'
end
