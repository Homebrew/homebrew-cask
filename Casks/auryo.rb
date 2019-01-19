cask 'auryo' do
  version '2.3.3'
  sha256 '31b7dc9e086eb54ee88ed8bda223833b0cb81c81481859514bc4635f674cad6d'

  # github.com/Superjo149/auryo was verified as official when first introduced to the cask
  url "https://github.com/Superjo149/auryo/releases/download/v#{version}/Auryo-#{version}.dmg"
  appcast 'https://github.com/Superjo149/auryo/releases.atom'
  name 'Auryo'
  homepage 'https://auryo.com/'

  app 'Auryo.app'
end
