cask 'auryo' do
  version '2.5.2'
  sha256 '20c70d2c5445714529b3eb78cf18397c703aeaa84136e5d9f495ce447bd4a3ef'

  # github.com/Superjo149/auryo was verified as official when first introduced to the cask
  url "https://github.com/Superjo149/auryo/releases/download/v#{version}/Auryo-#{version}.dmg"
  appcast 'https://github.com/Superjo149/auryo/releases.atom'
  name 'Auryo'
  homepage 'https://auryo.com/'

  app 'Auryo.app'
end
