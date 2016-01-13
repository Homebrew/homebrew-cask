cask 'splice' do
  version '1.6.12-201601071747'
  sha256 '49052352bb81cbd104b73241401e4f4a6d333749f12db32839c76e36dfc96784'

  # amazonaws.com is the official download host per the appcast feed
  url "https://s3-us-west-1.amazonaws.com/spliceosx/Splice.app-#{version}.zip"
  appcast 'https://splice.com/appcast.xml',
          :sha256 => 'aa13ed8622cf3aaa5a58590cc6fb7fa5493b7c2c400a60e07c6bf284124152d1'
  name 'Splice'
  homepage 'https://splice.com/'
  license :gratis

  installer :script => 'Splice Installer.app/Contents/MacOS/Splice Installer',
            :args   => ['-q'],
            :sudo   => false

  uninstall :quit   => 'com.splice.Splice',
            :delete => '/Applications/Splice.app'

  zap :delete => [
                   '~/Library/Application Support/*Splice*',
                   '~/Library/Caches/com.splice*',
                   '~/Library/Preferences/com.splice*',
                 ]
end
