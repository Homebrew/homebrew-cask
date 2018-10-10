cask 'blocs' do
  version '2.6.4'
  sha256 '3cca48a9990bbc4001fbd4b998bc9f7d777b7fc3efd01644d439635ed3b9f4cd'

  # uistore.io was verified as official when first introduced to the cask
  url "http://downloads.uistore.io/blocs/version-#{version.major}/Blocs.zip"
  appcast "https://uistore.io/blocs/#{version.major}.0/info.xml"
  name 'Blocs'
  homepage 'https://blocsapp.com/'

  auto_updates true

  app 'Blocs.app'
end
