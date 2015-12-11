cask :v1 => '115browser' do
  version '5.2.3.23'
  sha256 '0364f75c19a8d4aeca8118d90440dec52ec859668d7add303f28fbbb26c66941'

  url "http://down.115.com/client/mac/115Browser_v#{version}.dmg"
  name '115浏览器'
  name '115Browser'
  homepage 'http://pc.115.com/mac.html'
  license :gratis

  app '115Browser.app'
end
