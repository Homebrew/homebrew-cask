cask :v1 => 'pingendo' do
  version :latest
  sha256 :no_check

  url 'http://pingendo.com/Pingendo.dmg'
  homepage 'http://www.pingendo.com/'
  license :closed

  app 'Pingendo.app'
end
