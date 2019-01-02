cask 'auryo' do
  version '2.3.0'
  sha256 '0f184b44cb0ad363330873525760bfbb34d9204892f856c1eadb37ec9bc468e9'

  # github.com/Superjo149/auryo was verified as official when first introduced to the cask
  url "https://github.com/Superjo149/auryo/releases/download/v#{version}/Auryo-#{version}.dmg"
  appcast 'https://github.com/Superjo149/auryo/releases.atom'
  name 'Auryo'
  homepage 'http://auryo.com/'

  app 'Auryo.app'
end
