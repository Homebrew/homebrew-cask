cask 'auryo' do
  version '2.1.2'
  sha256 '39b04ffc45a4e2e67d066545d48b32c60d4b0d7741d72bc343eea5c5e20e022a'

  # github.com/Superjo149/auryo was verified as official when first introduced to the cask
  url "https://github.com/Superjo149/auryo/releases/download/v#{version}/Auryo-#{version}.dmg"
  appcast 'https://github.com/Superjo149/auryo/releases.atom'
  name 'Auryo'
  homepage 'http://auryo.com/'

  app 'Auryo.app'
end
