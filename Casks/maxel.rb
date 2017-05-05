cask 'maxel' do
  version '2.2,26'
  sha256 '131f1c17c6c0695327476bf9c30cc6cd1a0e2502dcbbfb2c4e5472318acf217f'

  # hockeyapp.net/api/2/apps/28f866a3599177c302907416c9913a92 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/28f866a3599177c302907416c9913a92/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/28f866a3599177c302907416c9913a92',
          checkpoint: '87b2adab47cfc1404909263df7b123c4efde384afc815ecc065af5ca9f1a367e'
  name 'Maxel'
  homepage 'https://maxelapp.com/'

  app 'Maxel.app'
end
