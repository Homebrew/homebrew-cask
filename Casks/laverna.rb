cask 'laverna' do
  version '0.7.3'
  sha256 'd3fcc7ccc7130502093a53963dd0cb5dadfc37280420a3c5647de5b60424532e'

  # github.com/Laverna/laverna was verified as official when first introduced to the cask
  url "https://github.com/Laverna/laverna/releases/download/#{version}/laverna-#{version}-darwin-x64.zip"
  appcast 'https://github.com/Laverna/laverna/releases.atom',
          checkpoint: '9237abe7697aa7294e5ffbbdd8ff70f6ded0e4657bfd26ae4d46140dc609262d'
  name 'Laverna'
  homepage 'https://laverna.cc/'

  app 'Laverna.app'
end
