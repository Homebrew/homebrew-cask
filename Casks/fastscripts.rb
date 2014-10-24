class Fastscripts < Cask
  version '2.6.8'
  sha256 '7cc170ecacad63872fe3faddd8dbaaa8f0e232687dbd8365594221ff64999def'

  url "https://www.red-sweater.com/fastscripts/FastScripts#{version}.zip"
  appcast 'http://www.red-sweater.com/fastscripts/appcast2.php'
  homepage 'http://www.red-sweater.com/fastscripts/'
  license :unknown

  app 'FastScripts.app'
end
