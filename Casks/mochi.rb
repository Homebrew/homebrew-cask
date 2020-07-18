cask 'mochi' do
  version '1.5.9'
  sha256 '4eac36200305344efbe905924dcba378a90ef27248732d87ea6737aa933146df'

  url "https://mochi.cards/releases/Mochi-#{version}.dmg"
  appcast 'https://mochi.cards/'
  name 'Mochi'
  homepage 'https://mochi.cards/'

  app 'Mochi.app'
end
