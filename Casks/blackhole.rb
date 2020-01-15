cask 'blackhole' do
  version '0.2.5'
  sha256 '911142980edebab6b05310c86ca4f7b4119a9dc09e1d0bdcee462ee03a82e9e8'

  url "https://github.com/ExistentialAudio/BlackHole/releases/download/v#{version}/BlackHole.v#{version}.pkg"
  appcast 'https://github.com/ExistentialAudio/BlackHole/releases.atom'
  name 'BlackHole'
  homepage 'https://github.com/ExistentialAudio/BlackHole'

  pkg "BlackHole.v#{version}.pkg"

  uninstall pkgutil: 'audio.existential.BlackHole'
end
