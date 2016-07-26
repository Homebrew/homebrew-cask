cask 'oryoki' do
  version '0.0.3'
  sha256 '51f88440e062e23abd7334bd20a9d4d0997cd6dc73f4962f02117c820e10ea54'

  # github.com/thmsbfft/oryoki was verified as official when first introduced to the cask
  url "https://github.com/thmsbfft/oryoki/releases/download/#{version}/Oryoki-#{version}.zip"
  appcast 'https://github.com/thmsbfft/oryoki/releases.atom',
          checkpoint: '2a3522a708a180e945df4fccbde22aab54bdc120398925d7ce1efcfffeede834'
  name 'Oryoki'
  homepage 'http://oryoki.io/'
  license :mit

  app 'Oryoki.app'
end
