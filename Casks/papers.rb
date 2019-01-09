cask 'papers' do
  version '3.4.19,573'
  sha256 '2462f23d4db30f8fcd82273687eea79de030ccd622e695b33b38a9d8f3fb0be7'

  # appcaster.papersapp.com/apps/mac/production/download was verified as official when first introduced to the cask
  url "https://appcaster.papersapp.com/apps/mac/production/download/#{version.after_comma}/papers_#{version.before_comma.no_dots}_#{version.after_comma}.dmg"
  appcast 'https://appcaster.papersapp.com/apps/mac/production/appcast.xml'
  name 'Papers'
  homepage 'https://www.readcube.com/papers/'

  app 'Papers.app'
end
