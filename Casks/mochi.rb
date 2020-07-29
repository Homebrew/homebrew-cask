cask 'mochi' do
  version '1.5.3'
  sha256 '0a386fce803ccd56335a23098dc9d0134c52a9a7fdab4ac4545074c4d3500798'

  url "https://mochi.cards/releases/Mochi-#{version}.dmg"
  appcast 'https://mochi.cards/'
  name 'Mochi'
  homepage 'https://mochi.cards/'

  app 'Mochi.app'
end
