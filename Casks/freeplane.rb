cask 'freeplane' do
  version '1.5.17'
  sha256 'cffb45c680943f05acf5800e829caf2d4d05bb640679bc9a5ebc50dd60f2cbe3'

  url "https://downloads.sourceforge.net/freeplane/freeplane%20stable/freeplane_app-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/freeplane/rss?path=/freeplane%20stable',
          checkpoint: '1b1156a9db35677356923dc253b720995cc1ad9c021718b9512e33bb31a134df'
  name 'Freeplane'
  homepage 'http://freeplane.sourceforge.net/'

  app 'Freeplane.app'
end
