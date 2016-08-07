cask '115browser' do
  version '7.2.0.17'
  sha256 '637bd783f324fb666cb040d7dfad82c7eb34cca59dae9cd35e01dcc235465144'

  url "http://down.115.com/client/mac/115br_v#{version}.dmg"
  name '115Browser'
  name '115浏览器'
  homepage 'https://pc.115.com/mac.html'
  license :gratis

  app '115Browser.app'
end
