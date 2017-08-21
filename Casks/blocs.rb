cask 'blocs' do
  version '2.4.0'
  sha256 'db25b668409208e2bb99c9944db96cc4e9269d2ea95a4bcd1983c87f54dd5fe5'

  # uistore.io was verified as official when first introduced to the cask
  url "http://downloads.uistore.io/blocs/version-#{version.major}/Blocs.zip"
  appcast "https://uistore.io/blocs/#{version.major}.0/info.xml",
          checkpoint: '91ed25ffc6ca9d764691883d477d40e081406452de328d0bac46dbcd515b13d3'
  name 'Blocs'
  homepage 'https://blocsapp.com/'

  auto_updates true

  app 'Blocs.app'
end
