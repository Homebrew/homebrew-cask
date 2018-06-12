cask 'papers' do
  version '3.4.16,555'
  sha256 'de4a61730a1a343ad06f0aa41fd9b9881d0cd11436db7aa8b61b11108c22a03e'

  # appcaster.papersapp.com/apps/mac/production/download was verified as official when first introduced to the cask
  url "http://appcaster.papersapp.com/apps/mac/production/download/#{version.after_comma}/papers_#{version.before_comma.no_dots}_#{version.after_comma}.dmg"
  appcast 'https://appcaster.papersapp.com/apps/mac/production/appcast.xml'
  name 'Papers'
  homepage 'https://www.readcube.com/papers/'

  app 'Papers.app'
end
