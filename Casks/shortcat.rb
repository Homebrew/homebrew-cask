class Shortcat < Cask
  version '0.7.3'
  sha256 '0d7a48a862a1b1f9a1c26f51afbcc6aaf6b406469643ec84de426d336f227cef'

  url "https://files.shortcatapp.com/v#{version}/Shortcat.zip"
  appcast 'https://shortcatapp.com/updates/appcast.xml'
  homepage 'http://shortcatapp.com/'

  app 'Shortcat.app'
end
