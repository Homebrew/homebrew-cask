cask 'blocs' do
  version '2.6.3'
  sha256 '81839b801857407fbd868dc6218ff20508d4797e4a718fcc1ab98fb1ffc977d3'

  # uistore.io was verified as official when first introduced to the cask
  url "http://downloads.uistore.io/blocs/version-#{version.major}/Blocs.zip"
  appcast "https://uistore.io/blocs/#{version.major}.0/info.xml"
  name 'Blocs'
  homepage 'https://blocsapp.com/'

  auto_updates true

  app 'Blocs.app'
end
