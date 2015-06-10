cask :v1 => 'splice' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://spliceosx.s3.amazonaws.com/Splice.dmg'
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
