cask :v1 => '0ad' do
  version '0.0.18-alpha'
  sha256 '0b1138032c38a14e67ba78301ac113247523c2128cbc4c673fb847a4b3a48f91'

  # wildfiregames.com is the official download host per the vendor homepage
  url "http://releases.wildfiregames.com/0ad-#{version}-osx64.dmg"
  name '0 A.D.'
  homepage 'http://www.play0ad.com/'
  license :oss

  app '0ad.app'
end
