cask 'fastscripts' do
  version '2.7.2'
  sha256 '1e3565a2e878cfec205a8ad3318b60692466d1dba1d41965979fc2d1e27dcd22'

  url "https://www.red-sweater.com/fastscripts/FastScripts#{version}.zip"
  appcast 'https://red-sweater.com/fastscripts/appcast2.php'
  name 'FastScripts'
  homepage 'https://red-sweater.com/fastscripts/'

  app 'FastScripts.app'
end
