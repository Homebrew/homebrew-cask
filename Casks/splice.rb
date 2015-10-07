cask :v1 => 'splice' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://spliceosx.s3.amazonaws.com/Splice.dmg'
  appcast 'https://splice.com/appcast.xml',
          :sha256 => '78ca29d1fcccb23888f8b5af9964fae50c61b3b3f543f1f6006fd1571b92ddda'
  name 'Splice'
  homepage 'https://splice.com/'
  license :gratis

  installer :script => 'Splice Installer.app/Contents/MacOS/Splice Installer',
            :args => [ '-q' ],
            :sudo => false

  uninstall :quit => 'com.splice.Splice',
            :delete => '/Applications/Splice.app'

  zap :delete => [
                  '~/Library/Application Support/*Splice*',
                  '~/Library/Caches/com.splice*',
                  '~/Library/Preferences/com.splice*'
                 ]
end
