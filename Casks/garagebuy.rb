cask 'garagebuy' do
  version '3.4b2'
  sha256 '9df802f477095b07ad7513aaa07563dc57c552a0ca2b4d1b54c1b13ad033a769'

  # iwascoding.de/ was verified as official when first introduced to the cask
  url "https://www.iwascoding.de/downloads/GarageBuy_#{version}.dmg"
  appcast 'https://www.iwascoding.com/GarageBuy/Downloads.html'
  name 'GarageBuy'
  homepage 'https://www.iwascoding.com/GarageBuy/'

  depends_on macos: '>= :sierra'

  app 'GarageBuy.app'
end
