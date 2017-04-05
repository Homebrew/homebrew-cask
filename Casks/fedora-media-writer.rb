cask 'fedora-media-writer' do
  version '4.0.8'
  sha256 '6f64f2ba333033f839981cb4435662fc299a8bdc45e895bc33ffd9753f675f62'

  # getfedora.org/fmw was verified as official when first introduced to the cask
  url "https://getfedora.org/fmw/FedoraMediaWriter-osx-#{version}.dmg"
  name 'Fedora Media Writer'
  homepage 'https://fedoraproject.org/wiki/How_to_create_and_use_Live_USB'

  app 'Fedora Media Writer.app'
end
