cask 'papers' do
  version '3.4.20,579'
  sha256 '48882e7852cd60ee42356e16fc297bbbe4f49c6a01f8a4a9127cfd10e45ff775'

  # appcaster.papersapp.com/apps/mac/production/download was verified as official when first introduced to the cask
  url "https://appcaster.papersapp.com/apps/mac/production/download/#{version.after_comma}/papers_#{version.before_comma.no_dots}_#{version.after_comma}.dmg"
  appcast 'https://appcaster.papersapp.com/apps/mac/production/appcast.xml'
  name 'Papers'
  homepage 'https://www.readcube.com/papers/'

  app 'Papers.app'
end
