cask 'blocs' do
  version '2.3.2'
  sha256 '76efb708686274c89beb13e96592449504cc0788b00142003e28b6d94d6e088c'

  # uistore.io was verified as official when first introduced to the cask
  url "http://downloads.uistore.io/blocs/version-#{version.major}/Blocs.zip"
  appcast "https://uistore.io/blocs/#{version.major}.0/info.xml",
          checkpoint: 'e71c5c4e997865268eced3ee239229ebdd1588808e98fff183cbf43010d207c6'
  name 'Blocs'
  homepage 'https://blocsapp.com/'

  auto_updates true

  app 'Blocs.app'
end
