cask 'objektiv' do
  version '0.5.1'
  sha256 '445802820a1fb256457031c80fcbf5a55eb58b471aba5221118dd24299614361'

  # nthloop.com is the official download host per the vendor homepage
  url "http://nthloop.com/objektiv/Objektiv.#{version}.zip"
  appcast 'http://nthloop.com/objektiv/appcast.xml',
          checkpoint: '58b2ecf14b9f598a60cd8656bb6f69e62bbd0083c21cc02ce5a178ae2cd1ff0c'
  name 'Objektiv'
  homepage 'https://nthloop.github.io/Objektiv/'
  license :mit

  app 'Objektiv.app'
end
