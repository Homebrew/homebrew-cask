class Coda < Cask
  version '2.0.13'
  sha256 '89ae6432997915fa93c5a5eafaf4ea1774af78961ff0b7f37722a149618387aa'

  url "https://panic.com/coda/d/Coda%20#{version}.zip"
  appcast 'http://www.panic.com/updates/update.php'
  homepage 'https://panic.com/Coda/'
  license :unknown

  app 'Coda 2.app'
  zap :delete => [
                  '~/Library/Application Support/Coda 2',
                  '~/Library/Preferences/com.panic.Coda2.plist',
                 ]
end
