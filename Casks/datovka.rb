cask 'datovka' do
  version '4.10.1'
  sha256 '2dba071af4a08c823b2dff3e014e77f1157fc1699c729d6ab3d1f3b7ebde8565'

  # secure.nic.cz/files/datove_schranky was verified as official when first introduced to the cask
  url "https://secure.nic.cz/files/datove_schranky/#{version}/datovka-#{version}-osx10.7.dmg"
  name 'Datovka'
  homepage 'https://www.datovka.cz/'

  app 'datovka.app'
end
