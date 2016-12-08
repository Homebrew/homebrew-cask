cask 'siilo' do
  version '0.3.2'
  sha256 '848f87c8cca1704080ee165174b9362e117a0926c25b29f00f23bdeca4897f75'

  url "https://siiloapp.com/releases/siilo-#{version}.zip"
  appcast 'https://api.siiloapp.com/versions/1/appcast.xml',
          checkpoint: 'd048385f246d0f8576533b61cc407c2ef6ac2a79e475695ffbd7588066c4af0a'
  name 'Siilo'
  homepage 'https://siiloapp.com/'

  app 'Siilo.app'
end
