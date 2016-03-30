cask 'pingendo' do
  version :latest
  sha256 :no_check

  url 'http://pingendo.com/Pingendo.dmg'
  name 'Pingendo'
  homepage 'http://www.pingendo.com/'
  license :closed

  app 'Pingendo.app'
end
