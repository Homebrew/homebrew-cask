class Shortcat < Cask
  version '0.7.4'
  sha256 '2f637b6ca13d7ea7f2635d617045695125a5a0ad6c20e913e9ea148ff9bed242'

  url "https://files.shortcatapp.com/v#{version}/Shortcat.zip"
  appcast 'https://shortcatapp.com/updates/appcast.xml'
  homepage 'http://shortcatapp.com/'
  license :unknown

  app 'Shortcat.app'
end
