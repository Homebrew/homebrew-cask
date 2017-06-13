cask 'ryver' do
  version '1.2.0'
  sha256 'de9a89fab748a1b5c1077b5710c222591129e8730f45eeda41fb3b7b37b30a4e'

  # d3vkb1nw20iqfq.cloudfront.net was verified as official when first introduced to the cask
  url "https://d3vkb1nw20iqfq.cloudfront.net/mac/Ryver-#{version}.dmg"
  name 'Ryver'
  homepage 'https://ryver.com/'

  app 'Ryver.app'
end
