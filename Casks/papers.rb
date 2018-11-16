cask 'papers' do
  version '3.4.18,566'
  sha256 '15c226fd763479319fe115c710d1ee40180a7d8137954da71cf777b9ae0dfd7c'

  # appcaster.papersapp.com/apps/mac/production/download was verified as official when first introduced to the cask
  url "https://appcaster.papersapp.com/apps/mac/production/download/#{version.after_comma}/papers_#{version.before_comma.no_dots}_#{version.after_comma}.dmg"
  appcast 'https://appcaster.papersapp.com/apps/mac/production/appcast.xml'
  name 'Papers'
  homepage 'https://www.readcube.com/papers/'

  app 'Papers.app'
end
