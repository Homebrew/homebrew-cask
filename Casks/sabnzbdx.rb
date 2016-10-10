cask 'sabnzbdx' do
  version '1.2.7'
  sha256 '4877945072b117fbc632cad7899e6fc114eaa56c623afe7868281dff380c5cf9'

  url "http://osx.boiboite.net/sabnzbdx-v#{version}.zip"
  name 'SABnzbdX'
  homepage 'http://osx.boiboite.net/'

  app 'SABnzbdX.app'

  uninstall quit: 'org.sabnzbdx.team'
end
