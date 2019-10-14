cask 'datovka' do
  version '4.14.0'
  sha256 '93c0cbe70c9f7f9ceab79e93d0a2e2e31a3dd4182ac5f4142fd7a103d51e9e1d'

  # secure.nic.cz/files/datove_schranky was verified as official when first introduced to the cask
  url "https://secure.nic.cz/files/datove_schranky/#{version}/datovka-#{version}-64bit-osx10.7.dmg"
  appcast 'https://www.datovka.cz/cs/pages/instalace.html'
  name 'Datovka'
  homepage 'https://www.datovka.cz/'

  app 'datovka.app'
end
