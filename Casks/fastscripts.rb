cask 'fastscripts' do
  version '2.6.10'
  sha256 '82cd7702eb6f858c1ebb657af02c1e1c9881790e12f66707733b1292c5b3265c'

  url "https://www.red-sweater.com/fastscripts/FastScripts#{version}.zip"
  appcast 'https://red-sweater.com/fastscripts/appcast2.php',
          checkpoint: '4c4fb4dadf4dc1bf7e31df38ddf494d1acbb0fceecaf3e01e5cb01dcba6086af'
  name 'FastScripts'
  homepage 'https://red-sweater.com/fastscripts/'

  app 'FastScripts.app'
end
