cask :v1 => 'opera' do
  version '25.0.1614.71'
  sha256 'd0c45553f8d3dc22c98f2790f935a5254332526fa8e472ca18e3567515d5de99'

  url "http://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  homepage 'http://www.opera.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'Opera.app'
end
