cask 'blocs' do
  version '2.6.2'
  sha256 'ef48ca2977685b45f0077c91af58764fd6ec78cb73abedce57605729a6c189b3'

  # uistore.io was verified as official when first introduced to the cask
  url "http://downloads.uistore.io/blocs/version-#{version.major}/Blocs.zip"
  appcast "https://uistore.io/blocs/#{version.major}.0/info.xml"
  name 'Blocs'
  homepage 'https://blocsapp.com/'

  auto_updates true

  app 'Blocs.app'
end
