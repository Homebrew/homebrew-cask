cask 'jasper' do
  version '0.4.0'
  sha256 '78177f7609977ea0aa8818e0cda26270b4e338c6a4b46411866d2fdc38c285d2'

  # github.com/jasperapp/jasper was verified as official when first introduced to the cask
  url "https://github.com/jasperapp/jasper/releases/download/v#{version}/jasper_v#{version}_mac.zip"
  appcast 'https://jasperapp.io/-/versions-mac.json',
          checkpoint: '02eaa2100598bb5e5ad11c23fb100a41cd65fb46ab35447db49fb8275d307fed'
  name 'Jasper'
  homepage 'https://jasperapp.io/'

  app 'Jasper.app'

  zap trash: [
               '~/Library/Application Support/jasper',
               '~/Library/Containers/io.jasperapp',
             ]
end
