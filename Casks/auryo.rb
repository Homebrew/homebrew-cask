cask 'auryo' do
  version '2.2.1'
  sha256 '3725030b00e8ba75d6514fd9c4c56cedb69b406042bd8c6b1e6c7bc33d55ffee'

  # github.com/Superjo149/auryo was verified as official when first introduced to the cask
  url "https://github.com/Superjo149/auryo/releases/download/v#{version}/Auryo-#{version}.dmg"
  appcast 'https://github.com/Superjo149/auryo/releases.atom'
  name 'Auryo'
  homepage 'http://auryo.com/'

  app 'Auryo.app'
end
