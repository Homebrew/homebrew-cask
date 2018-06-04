cask 'blocs' do
  version '2.6.0'
  sha256 'a3488866a28e8b36cc856df0de85044fa5f6975ff0f0f9f86b4e3c66f5073964'

  # uistore.io was verified as official when first introduced to the cask
  url "http://downloads.uistore.io/blocs/version-#{version.major}/Blocs.zip"
  appcast "https://uistore.io/blocs/#{version.major}.0/info.xml",
          checkpoint: 'ef341b2eb12b43da9231b216c377af66a2c5e0b9c1749979dc8af40099617b5a'
  name 'Blocs'
  homepage 'https://blocsapp.com/'

  auto_updates true

  app 'Blocs.app'
end
