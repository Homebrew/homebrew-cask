cask 'gtkwave' do
  version '3.3.81'
  sha256 '184c810d01dd5ae425f132060259bd387300e0e114689e54c20f0e8fb175fe53'

  url "https://downloads.sourceforge.net/gtkwave/gtkwave-#{version}-osx-app/gtkwave.zip"
  appcast 'https://sourceforge.net/projects/gtkwave/rss',
          checkpoint: '0fc1886f475feb6031c5d9fd29b22c6c73ec9f8a4dc04175c9968ce7a462a08f'
  name 'GTKWave'
  homepage 'http://gtkwave.sourceforge.net/'

  app 'gtkwave.app'
end
