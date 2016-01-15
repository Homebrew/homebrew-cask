cask 'objektiv' do
  version :latest
  sha256 :no_check

  # nthloop.com is the official download host per the vendor homepage
  url 'http://nthloop.com/objektiv/objektiv-latest.zip'
  appcast 'http://nthloop.com/objektiv/appcast.xml',
          :checkpoint => '58b2ecf14b9f598a60cd8656bb6f69e62bbd0083c21cc02ce5a178ae2cd1ff0c'
  name 'Objektiv'
  homepage 'https://nthloop.github.io/Objektiv/'
  license :mit

  app 'Objektiv.app'
end
