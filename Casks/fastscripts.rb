cask :v1 => 'fastscripts' do
  version '2.6.8'
  sha256 '7cc170ecacad63872fe3faddd8dbaaa8f0e232687dbd8365594221ff64999def'

  url "https://www.red-sweater.com/fastscripts/FastScripts#{version}.zip"
  appcast 'http://www.red-sweater.com/fastscripts/appcast2.php',
          :sha256 => '500cd40fd4f6a40f76d8329d7246f79414f4d5aeba5bf605be18c16a6de657f5'
  homepage 'http://www.red-sweater.com/fastscripts/'
  license :unknown

  app 'FastScripts.app'
end
