cask 'papers' do
  version '3.4.23,587'
  sha256 '6960a5ad8d886d67cf9ab39730baa04f9fb5fb64a2c28cd0c25073f9b515f565'

  # appcaster.papersapp.com/apps/mac/production/download was verified as official when first introduced to the cask
  url "https://appcaster.papersapp.com/apps/mac/production/download/#{version.after_comma}/papers_#{version.before_comma.no_dots}_#{version.after_comma}.dmg"
  appcast 'https://appcaster.papersapp.com/apps/mac/production/appcast.xml'
  name 'Papers'
  homepage 'https://www.readcube.com/papers/'

  app 'Papers.app'
end
