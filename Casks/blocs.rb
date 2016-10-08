cask 'blocs' do
  version '2.2.1'
  sha256 'd10a06759af8868eb09381da71288c68f7400436155536e7c1a6efb53ec2d609'

  # uistore.io was verified as official when first introduced to the cask
  url 'http://downloads.uistore.io/blocs/version-2/Blocs.zip'
  appcast 'https://uistore.io/blocs/2.0/info.xml',
          checkpoint: '5b095d961e2a6177f4fdec510f423090ed962c96c3219901672d0745267d6413'
  name 'Blocs'
  homepage 'http://blocsapp.com/'
  license :commercial

  auto_updates true

  app 'Blocs.app'
end
