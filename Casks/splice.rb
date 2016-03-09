cask 'splice' do
  version '1.6.18-201602011654'
  sha256 '00cc652f935fd01aeea974ff2516774b426b02d9dd2fcf90202bd716593ede9b'

  # amazonaws.com/spliceosx was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/spliceosx/Splice.app-#{version}.zip"
  appcast 'https://splice.com/appcast.xml',
          checkpoint: 'fb376fa579ff56e074816813503b49616539e04c86ae23e8ec37afca4f0b7db1'
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
