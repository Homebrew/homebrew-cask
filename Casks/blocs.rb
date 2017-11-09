cask 'blocs' do
  version '2.4.4'
  sha256 '0e31a825d64f67556613d4def1d1943b8f54abe2c5b3e605de3c0f6d49152dc3'

  # uistore.io was verified as official when first introduced to the cask
  url "http://downloads.uistore.io/blocs/version-#{version.major}/Blocs.zip"
  appcast "https://uistore.io/blocs/#{version.major}.0/info.xml",
          checkpoint: 'bdd646ca2fba5b7cd2ec742bbc3adc273489a806d4bb0eb570cc027cf34aa399'
  name 'Blocs'
  homepage 'https://blocsapp.com/'

  auto_updates true

  app 'Blocs.app'
end
