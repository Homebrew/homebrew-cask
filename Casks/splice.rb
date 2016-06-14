cask 'splice' do
  version '2.0.7-201606131608'
  sha256 '19d751155f8ea5f58189c3a9b50942ba5652b208facc3a255f7b4a266461fd31'

  # amazonaws.com/spliceosx was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/spliceosx/Splice.app-#{version}.zip"
  appcast 'https://splice.com/appcast.xml',
          checkpoint: '8d2d0e9a7c9b3fa013b456f0fdda5b44bf7c2c2334be14af3dff897c20240f4c'
  name 'Splice'
  homepage 'https://splice.com/'
  license :gratis

  app 'Splice.app'

  uninstall quit:   'com.splice.Splice'

  zap delete: [
                '~/Library/Application Support/*Splice*',
                '~/Library/Caches/com.splice*',
                '~/Library/Preferences/com.splice*',
              ]
end
