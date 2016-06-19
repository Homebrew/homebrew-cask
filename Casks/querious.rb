cask 'querious' do
  version '2.0_beta44'
  sha256 '005784b7055bcf4252eb575d27e0bf799e52b829677f42e8281d44fbb5b1796c'

  # store.araelium.com/querious was verified as official when first introduced to the cask
  url "https://store.araelium.com/querious/downloads/versions/Querious#{version}.zip"
  appcast 'https://arweb-assets.s3.amazonaws.com/downloads/querious/prerelease-updates.xml',
          checkpoint: '2e570e2810574f79930e093f50af8682cfc7b43d1b84c0118ae1b2c9122e2fc5'
  name 'Querious 2'
  homepage 'http://www.araelium.com/querious/'
  license :commercial

  app 'Querious.app'
end
