cask 'splice' do
  version '2.1.3-201608221823'
  sha256 '001b02f7d6af273a7ada9a10ebaaa33900632819cf2c4e242dd5a9353f166583'

  # amazonaws.com/spliceosx was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/spliceosx/Splice.app-#{version}.zip"
  appcast 'https://splice.com/appcast.xml',
          checkpoint: '2e990cbefc638b9fb5136da85048d35efc4e4fa5a7d6efb56ffcf8db03131921'
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
