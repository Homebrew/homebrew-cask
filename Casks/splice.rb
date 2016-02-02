cask 'splice' do
  version '1.6.17-201601271754'
  sha256 '5fd77ef925712240c083a0e38bb058dae946e466ab92c8fd991bd31f9214a5c4'

  # amazonaws.com/spliceosx was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/spliceosx/Splice.app-#{version}.zip"
  appcast 'https://splice.com/appcast.xml',
          checkpoint: '1b15ef5d54407968a29801a818b9ad0536de2fe9fd96e2bbcbe114171b44f2b3'
  name 'Splice'
  homepage 'https://splice.com/'
  license :gratis

  installer script: 'Splice Installer.app/Contents/MacOS/Splice Installer',
            args:   ['-q'],
            sudo:   false

  uninstall quit:   'com.splice.Splice',
            delete: '/Applications/Splice.app'

  zap delete: [
                '~/Library/Application Support/*Splice*',
                '~/Library/Caches/com.splice*',
                '~/Library/Preferences/com.splice*',
              ]
end
