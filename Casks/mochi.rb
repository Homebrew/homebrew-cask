cask 'mochi' do
  version '1.4.19'
  sha256 '3d5ae080245a3d3f93afe89e800ef6e4b85cb3853ea58cd99705085ecba0ec03'

  url "https://mochi.cards/releases/Mochi-#{version}.dmg"
  appcast 'https://mochi.cards/'
  name 'Mochi'
  homepage 'https://mochi.cards/'

  app 'Mochi.app'
end
