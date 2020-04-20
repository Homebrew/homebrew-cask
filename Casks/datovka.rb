cask 'datovka' do
  version '4.15.0'
  sha256 'b7b76c092252a45f66b11b43a049ce062ff58b2a9d0d5b027081ac6e3f5131e8'

  # secure.nic.cz/files/datove_schranky/ was verified as official when first introduced to the cask
  url "https://secure.nic.cz/files/datove_schranky/#{version}/datovka-#{version}-64bit-osx10.7.dmg"
  appcast 'https://www.datovka.cz/cs/pages/instalace.html'
  name 'Datovka'
  homepage 'https://www.datovka.cz/'

  app 'datovka.app'
end
