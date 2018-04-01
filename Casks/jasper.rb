cask 'jasper' do
  version '0.5.0'
  sha256 '962a38ad3a928894289643fd47febfdeb585c2e712c73dba23487edb940b25cd'

  # github.com/jasperapp/jasper was verified as official when first introduced to the cask
  url "https://github.com/jasperapp/jasper/releases/download/v#{version}/jasper_v#{version}_mac.zip"
  appcast 'https://jasperapp.io/-/versions-mac.json',
          checkpoint: '56d1635b6477649e9336bffc59dd307a3748ed9d4c2326792cc32a12c9d7d790'
  name 'Jasper'
  homepage 'https://jasperapp.io/'

  app 'Jasper.app'

  zap trash: [
               '~/Library/Application Support/jasper',
               '~/Library/Containers/io.jasperapp',
             ]
end
