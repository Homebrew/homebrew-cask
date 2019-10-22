cask 'auryo' do
  version '2.4.0'
  sha256 '7e7bd35e03662a61f63a224ecd4364b0bdaa4e4c3cc8f174b671f8627ff334fe'

  # github.com/Superjo149/auryo was verified as official when first introduced to the cask
  url "https://github.com/Superjo149/auryo/releases/download/v#{version}/Auryo-#{version}.dmg"
  appcast 'https://github.com/Superjo149/auryo/releases.atom'
  name 'Auryo'
  homepage 'https://auryo.com/'

  app 'Auryo.app'
end
