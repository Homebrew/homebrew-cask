cask 'datovka' do
  version '4.10.3'
  sha256 '6ccebae5d8597a5b30d05471c7ed17130a9d2beb74ecd6e3e4195e2fd0419a67'

  # secure.nic.cz/files/datove_schranky was verified as official when first introduced to the cask
  url "https://secure.nic.cz/files/datove_schranky/#{version}/datovka-#{version}-64bit-osx10.7.dmg"
  name 'Datovka'
  homepage 'https://www.datovka.cz/'

  app 'datovka.app'
end
