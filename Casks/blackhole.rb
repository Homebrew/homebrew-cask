cask 'blackhole' do
  version '0.2.2'
  sha256 'ad4190e69e7fa2c0e150f31ddb414cc482d248f4ba78ecfd787dca4e3859fed8'

  url "https://github.com/ExistentialAudio/BlackHole/releases/download/v#{version}/BlackHole.v#{version}.pkg"
  appcast 'https://github.com/ExistentialAudio/BlackHole/releases.atom'
  name 'BlackHole'
  homepage 'https://github.com/ExistentialAudio/BlackHole'

  pkg "BlackHole.v#{version}.pkg"

  uninstall pkgutil: 'audio.existential.BlackHole'
end
