cask 'auryo' do
  version '2.2.2'
  sha256 'e16822edc479b03b5d0f82018fbe89ee3636f4fd36439dc4e953479187eeac1e'

  # github.com/Superjo149/auryo was verified as official when first introduced to the cask
  url "https://github.com/Superjo149/auryo/releases/download/v#{version}/Auryo-#{version}.dmg"
  appcast 'https://github.com/Superjo149/auryo/releases.atom'
  name 'Auryo'
  homepage 'http://auryo.com/'

  app 'Auryo.app'
end
