cask 'splice' do
  version '2.1.8-201610131641'
  sha256 '7123768004fce6a259752f47c948e1309e53853391a8e562da7074e588df0dbd'

  # amazonaws.com/spliceosx was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/spliceosx/Splice.app-#{version}.zip"
  appcast 'https://splice.com/appcast.xml',
          checkpoint: '4fb3a1e2c86176252dfc9e7367df425e43bcfb132cdf590a4caaae3597b50949'
  name 'Splice'
  homepage 'https://splice.com/'

  app 'Splice.app'

  uninstall quit:   'com.splice.Splice'

  zap delete: [
                '~/Library/Application Support/*Splice*',
                '~/Library/Caches/com.splice*',
                '~/Library/Preferences/com.splice*',
              ]
end
