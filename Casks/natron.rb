cask 'natron' do
  version '2.3.13'
  sha256 '117aa5df7843a25e48941cd904236d510c679740b17c1eca98e94cccf7925e4c'

  # downloads.sourceforge.net/natron was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/natron/Natron-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/natron/files/OSX/Universal/releases/'
  name 'Natron'
  homepage 'https://natron.fr/'

  app 'Natron.app'
end
