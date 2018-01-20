cask 'fldigi' do
  version '4.0.13'
  sha256 '3c73f1d09c9dac4c9c9285f02e4f3bc7d0a59f44c014b2ae5b3ec9a82af5328c'

  url "https://downloads.sourceforge.net/fldigi/fldigi/fldigi-#{version}.64bit.dmg"
  appcast 'https://sourceforge.net/projects/fldigi/rss?path=/fldigi',
          checkpoint: '6f3dfb43aca05a45ba4eb31100260d294c82770db55e112b89c68ea9b2d6345a'
  name 'fldigi'
  homepage 'https://sourceforge.net/projects/fldigi/files/fldigi/'

  app "fldigi-#{version}.app"
  app 'flarq-4.3.6.app'
end
