cask 'googleappengine' do
  version '1.9.35'
  sha256 '7b835604e0687c74414d499647a426c7f164a20eb03963670a76c044c4f29afc'

  # storage.googleapis.com/appengine-sdks was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/appengine-sdks/featured/GoogleAppEngineLauncher-#{version}.dmg"
  appcast 'https://storage.googleapis.com/appengine-sdks',
          checkpoint: '289c3a9dbfcbc652417fedbb839249684f6bc65d735c18025f269a2685d81676'
  name 'Google App Engine'
  homepage 'https://developers.google.com/appengine/'
  license :apache

  app 'GoogleAppEngineLauncher.app'
end
