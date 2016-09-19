cask 'querious' do
  version '2.0_beta46'
  sha256 'e8c2b0c8f60f1589e2d29fea2a6340819beb3744fa39f834bc76d341cb77afb2'

  url "https://store.araelium.com/querious/downloads/versions/Querious#{version}.zip"
  appcast 'https://arweb-assets.s3.amazonaws.com/downloads/querious/prerelease-updates.xml',
          checkpoint: 'e72acf8cf365bea073c8a947454347172e360e3cbd5a158fb9cfc47dbb43a845'
  name 'Querious 2'
  homepage 'http://www.araelium.com/querious/'
  license :commercial

  app 'Querious.app'
end
