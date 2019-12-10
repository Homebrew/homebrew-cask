cask 'datovka' do
  version '4.14.1'
  sha256 'c09e40ec3a10b26c3913eba33f0b9a5bd42b7341937308124fe40c105a10cc56'

  # secure.nic.cz/files/datove_schranky was verified as official when first introduced to the cask
  url "https://secure.nic.cz/files/datove_schranky/#{version}/datovka-#{version}-64bit-osx10.7.dmg"
  appcast 'https://www.datovka.cz/cs/pages/instalace.html'
  name 'Datovka'
  homepage 'https://www.datovka.cz/'

  app 'datovka.app'
end
