cask 'papers' do
  version '3.4.21,581'
  sha256 '04833ef8294a9b112b7bde5de82b9e0bc98a50ae575fcafcb7bba15181007f90'

  # appcaster.papersapp.com/apps/mac/production/download was verified as official when first introduced to the cask
  url "https://appcaster.papersapp.com/apps/mac/production/download/#{version.after_comma}/papers_#{version.before_comma.no_dots}_#{version.after_comma}.dmg"
  appcast 'https://appcaster.papersapp.com/apps/mac/production/appcast.xml'
  name 'Papers'
  homepage 'https://www.readcube.com/papers/'

  app 'Papers.app'
end
