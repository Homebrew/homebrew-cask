cask 'splice' do
  version '1.6.19-201602111645'
  sha256 'fa6eb5f4ed0cca8e0f92c01e24493962d0d5656bd4f10094d20006516c2c1916'

  # amazonaws.com/spliceosx was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/spliceosx/Splice.app-#{version}.zip"
  appcast 'https://splice.com/appcast.xml',
          checkpoint: 'f1759606a04d38a0f578073733386950b5cf600fb3bdee6569b98664b088eee5'
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
