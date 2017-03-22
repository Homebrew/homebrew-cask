cask 'fliqlo' do
  version '1.7.1'
  sha256 'afd741da6dd0dc971a67176509035edfffd0c6bd0295e6796f1b57f03f928d10'

  url "http://fliqlo.com/download/fliqlo_#{version.no_dots}.dmg", referer: 'http://fliqlo.com/#about'
  appcast 'http://fliqlo.com/changelog.txt',
          checkpoint: '0c97c1d658a9242df6e3cdb8d408d46ed4b6496bff5176135a70b3a7dc71877d'
  name 'Fliqlo'
  homepage 'http://fliqlo.com/'

  screen_saver 'Fliqlo.saver'
end
