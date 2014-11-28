cask :v1 => 'coda' do
  version '2.5'
  sha256 '9393ef340e04b8dc201d735a3885d14f13e82a6544b47c1ff21c4ad6eacd32ad'

  url "https://download.panic.com/coda/Coda%20#{version}.zip"
  appcast 'http://www.panic.com/updates/update.php'
  homepage 'https://panic.com/Coda/'
  license :unknown

  app 'Coda 2.app'

  zap :delete => [
                  '~/Library/Application Support/Coda 2',
                  '~/Library/Preferences/com.panic.Coda2.plist',
                 ]
end
