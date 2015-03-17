cask :v1 => 'coda' do
  version '2.5.7'
  sha256 '2140a24ba9aafd9526ae8279f9deca18e5ed01336bca43514c6d6cc5ce836139'

  url "https://download.panic.com/coda/Coda%20#{version}.zip"
  appcast 'http://www.panic.com/updates/update.php'
  name 'Coda'
  homepage 'https://panic.com/Coda/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Coda 2.app'

  zap :delete => [
                  '~/Library/Application Support/Coda 2',
                  '~/Library/Preferences/com.panic.Coda2.plist',
                 ]
end
