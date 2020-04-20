cask 'oolite' do
  version '1.88'
  sha256 '9d369f9ebd8c72d2c9395dc893fe5e8d1561248641d8440b92a8e86e24cd6134'

  # github.com/OoliteProject/oolite/ was verified as official when first introduced to the cask
  url "https://github.com/OoliteProject/oolite/releases/download/#{version}/Oolite-#{version}.zip"
  appcast 'https://github.com/OoliteProject/oolite/releases.atom'
  name 'oolite'
  homepage 'http://www.oolite.org/'

  app 'Oolite.app'
end
