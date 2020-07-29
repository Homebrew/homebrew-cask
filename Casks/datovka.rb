cask 'datovka' do
  version '4.15.1'
  sha256 'f9e7e8699d49f87581a737da20124344f4275bf5999a362c4c778c4838537eb7'

  # secure.nic.cz/files/datove_schranky/ was verified as official when first introduced to the cask
  url "https://secure.nic.cz/files/datove_schranky/#{version}/datovka-#{version}-64bit-macos10.12.dmg"
  appcast 'https://www.datovka.cz/cs/pages/instalace.html'
  name 'Datovka'
  homepage 'https://www.datovka.cz/'

  app 'datovka.app'
end
