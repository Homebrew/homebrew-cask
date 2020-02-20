cask 'auryo' do
  version '2.5.1'
  sha256 '3434bccbcba37f7990a5ab08d2bf482bdc1b56d0c4b542adc27c6289f839534b'

  # github.com/Superjo149/auryo was verified as official when first introduced to the cask
  url "https://github.com/Superjo149/auryo/releases/download/v#{version}/Auryo-#{version}.dmg"
  appcast 'https://github.com/Superjo149/auryo/releases.atom'
  name 'Auryo'
  homepage 'https://auryo.com/'

  app 'Auryo.app'
end
