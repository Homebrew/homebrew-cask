cask 'blocs' do
  version '2.3.0'
  sha256 'b8e88252cbfb6b08d60c8317ddd81f5eca67811d215f8dcb0f9e3bdf6cee18fa'

  # uistore.io was verified as official when first introduced to the cask
  url "http://downloads.uistore.io/blocs/version-#{version.major}/Blocs.zip"
  appcast "https://uistore.io/blocs/#{version.major}.0/info.xml",
          checkpoint: 'fb118d92f6c175170bc467a63c9eb3008c82bbbac7475a365b98a54a8f0fb635'
  name 'Blocs'
  homepage 'https://blocsapp.com/'

  auto_updates true

  app 'Blocs.app'
end
