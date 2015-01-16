cask :v1 => 'coda' do
  version '2.5.2'
  sha256 'd81764e9e54625663f2b043ee117f555515462046dfdf7b03a14740c4b78113f'

  url "https://download.panic.com/coda/Coda%20#{version}.zip"
  appcast 'http://www.panic.com/updates/update.php'
  homepage 'https://panic.com/Coda/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Coda 2.app'

  zap :delete => [
                  '~/Library/Application Support/Coda 2',
                  '~/Library/Preferences/com.panic.Coda2.plist',
                 ]
end
