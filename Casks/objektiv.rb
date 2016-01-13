cask 'objektiv' do
  version :latest
  sha256 :no_check

  # nthloop.com is the official download host per the vendor homepage
  url 'http://nthloop.com/objektiv/objektiv-latest.zip'
  appcast 'http://nthloop.com/objektiv/appcast.xml',
          :checkpoint => '39395510396802679354dfad29d91579c406b9b897a0c6ecd687e14362c92e76'
  name 'Objektiv'
  homepage 'https://nthloop.github.io/Objektiv/'
  license :mit

  app 'Objektiv.app'
end
