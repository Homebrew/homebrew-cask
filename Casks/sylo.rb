cask 'sylo' do
  version '2.5.0'
  sha256 '2ae336f009302199ae513a44a57c3749b59171b07276609f5e6d63c8e85168d8'

  # s3-us-west-2.amazonaws.com/unision was verified as official when first introduced to the cask
  url 'https://s3-us-west-2.amazonaws.com/unision/Sylo.zip'
  appcast 'http://admin.unisionmusic.com/sylo/update.xml',
          checkpoint: '9e7d6805a219f1ce3476159a9fddf88758d0c2f3577c0284dafd4461148f6e49'
  name 'Sylo'
  homepage 'http://www.sylomusic.com/'

  auto_updates true

  app 'Sylo.app'
end
