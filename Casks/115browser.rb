cask '115browser' do
  version '5.2.5.25'
  sha256 'c5f885b7593392060eeddb4cb145f9e31e27905bd6140e332fb22d6f87ec646a'

  url "http://down.115.com/client/mac/115br_v#{version}.dmg"
  name '115Browser'
  name '115浏览器'
  homepage 'http://pc.115.com/mac.html'
  license :gratis

  app '115Browser.app'
end
