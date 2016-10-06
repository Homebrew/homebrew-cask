cask 'splice' do
  version '2.1.7-201609221705'
  sha256 'd68fb85daeb12bdad94d787faeb44c904947a070884a6cb637d7603c0cdb5399'

  # amazonaws.com/spliceosx was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/spliceosx/Splice.app-#{version}.zip"
  appcast 'https://splice.com/appcast.xml',
          checkpoint: 'a26a85e731e4929366286e0ecf5c67d63cd3f9505720f0813ce5b37b6cf6031b'
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
