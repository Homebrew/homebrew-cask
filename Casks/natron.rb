cask 'natron' do
  version '2.3.13'
  sha256 '117aa5df7843a25e48941cd904236d510c679740b17c1eca98e94cccf7925e4c'

  # https://ayera.dl.sourceforge.net/project/natron/ was verified as official when first introduced to the cask
  url "https://ayera.dl.sourceforge.net/project/natron/OSX/Universal/releases/Natron-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/natron/files/OSX/Universal/releases/'
  name 'Natron'
  homepage 'https://natron.fr/'

  app 'Natron.app'
end
