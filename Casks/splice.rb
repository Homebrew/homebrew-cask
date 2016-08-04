cask 'splice' do
  version '2.1-201608030957'
  sha256 '1db1d4800246e8bceda4338ca2a1541accde20411b736781a8e40b29cce05c85'

  # amazonaws.com/spliceosx was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/spliceosx/Splice.app-#{version}.zip"
  appcast 'https://splice.com/appcast.xml',
          checkpoint: 'c1653da499e24fed0a60ebc090c5b45622ef0236427701cbce3ab6080e081605'
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
