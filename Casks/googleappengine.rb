cask 'googleappengine' do
  version '1.9.32'
  sha256 '5e4a4cef55ab565852ddff3466d189157cfa78edc67191fb6159016290bbb8e0'

  # googleapis.com is the official download host per the vendor homepage
  url "https://storage.googleapis.com/appengine-sdks/featured/GoogleAppEngineLauncher-#{version}.dmg"
  appcast 'https://storage.googleapis.com/appengine-sdks',
          checkpoint: '6c1bbd3ea2d83a655d18daf2fa7cd0118298aaca4ec7418674df85ed2cf59315'
  name 'Google App Engine'
  homepage 'https://developers.google.com/appengine/'
  license :apache

  app 'GoogleAppEngineLauncher.app'
end
