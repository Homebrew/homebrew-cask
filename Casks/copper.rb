cask 'copper' do
  version '1.3'
  sha256 '81a536e5dcf737d0d6f887a3422bc30c90466d96e6a3019fc8ac154607a4ba85'

  # dl.devmate.com was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.appfruits.copper/Copper.zip'
  appcast 'https://updates.devmate.com/com.appfruits.copper.xml',
          checkpoint: '740c67fe43ee3794dc82fb08f6b641a3d46b59dde7d444cdcd709adaf41749b0'
  name 'Copper'
  homepage 'https://www.copper-app.com/'

  app 'Copper.app'
end
