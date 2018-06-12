cask 'blocs' do
  version '2.6.0'
  sha256 'a3488866a28e8b36cc856df0de85044fa5f6975ff0f0f9f86b4e3c66f5073964'

  # uistore.io was verified as official when first introduced to the cask
  url "http://downloads.uistore.io/blocs/version-#{version.major}/Blocs.zip"
  appcast "https://uistore.io/blocs/#{version.major}.0/info.xml"
  name 'Blocs'
  homepage 'https://blocsapp.com/'

  auto_updates true

  app 'Blocs.app'
end
