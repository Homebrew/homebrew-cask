cask 'blocs' do
  version '2.6.5'
  sha256 'cd653f2072724a496430501532bf23d1ac146632741169e4cad8796b541613e8'

  # uistore.io was verified as official when first introduced to the cask
  url "http://downloads.uistore.io/blocs/version-#{version.major}/Blocs.zip"
  appcast "https://uistore.io/blocs/#{version.major}.0/info.xml"
  name 'Blocs'
  homepage 'https://blocsapp.com/'

  auto_updates true

  app 'Blocs.app'
end
