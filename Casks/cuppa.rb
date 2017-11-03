cask 'cuppa' do
  version '1.8'
  sha256 '53b5441b277073c78a3f885e08009ef55f288b1577a035b0f2a038d8504ab7a9'

  url "https://www.nathanatos.com/software/downloads/Cuppa-#{version}.zip"
  appcast 'https://www.nathanatos.com/software/cuppa.xml',
          checkpoint: '3d52ac23d6d41e07cb6f394e4dc510d4ee60be80e3b8426277069eda4e4bd804'
  name 'Cuppa'
  homepage 'https://www.nathanatos.com/software/'

  app 'Cuppa.app'
end
