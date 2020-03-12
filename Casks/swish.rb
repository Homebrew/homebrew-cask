cask 'swish' do
  version '1.3'
  sha256 '8e7a39a421c69b355fb6d3f2b31135a82901648547ee159232e6783b5cde6f83'

  url "https://highlyopinionated.co/swish/Swish-#{version}.zip"
  appcast 'https://highlyopinionated.co/swish/appcast.xml'
  name 'Swish'
  homepage 'https://highlyopinionated.co/swish/'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'Swish.app'
end
