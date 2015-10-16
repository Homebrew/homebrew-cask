cask :v1 => 'splice' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://spliceosx.s3.amazonaws.com/Splice.dmg'
  appcast 'https://splice.com/appcast.xml',
          :sha256 => '6928a8b8f69fbfe4fb9ddc49fe681a66bb9f0fea433a20961c20aece6c124f50'
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
