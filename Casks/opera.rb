cask 'opera' do
  version '56.0.3051.99'
  sha256 '4984898f0fe0d4ceb95d5f06db492d18047584393fddfb7578f15c133d5f5128'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'https://www.opera.com/'

  auto_updates true

  app 'Opera.app'
end
