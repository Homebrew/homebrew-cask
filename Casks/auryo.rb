cask 'auryo' do
  version '2.5.3'
  sha256 '7a35ca5cdbc2ceffb6993ccb37ef1026dce99a81a526a1e63162c6ebb455af04'

  # github.com/Superjo149/auryo was verified as official when first introduced to the cask
  url "https://github.com/Superjo149/auryo/releases/download/v#{version}/Auryo-#{version}.dmg"
  appcast 'https://github.com/Superjo149/auryo/releases.atom'
  name 'Auryo'
  homepage 'https://auryo.com/'

  app 'Auryo.app'
end
