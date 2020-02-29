cask 'blackhole' do
  version '0.2.6'
  sha256 '790762df8caf3e1cf017d04358ef74650428b2befb886e180263659ddc553596'

  url "https://github.com/ExistentialAudio/BlackHole/releases/download/v#{version}/BlackHole.v#{version}.pkg"
  appcast 'https://github.com/ExistentialAudio/BlackHole/releases.atom'
  name 'BlackHole'
  homepage 'https://github.com/ExistentialAudio/BlackHole'

  pkg "BlackHole.v#{version}.pkg"

  uninstall pkgutil: 'audio.existential.BlackHole'
end
