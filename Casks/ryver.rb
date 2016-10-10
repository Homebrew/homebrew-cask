cask 'ryver' do
  version '1.1.6'
  sha256 '8176bc4612e52e53bb14cffb50d576762fb556668a8e0d2b251b59c9a3ed7bd0'

  # d3vkb1nw20iqfq.cloudfront.net was verified as official when first introduced to the cask
  url "https://d3vkb1nw20iqfq.cloudfront.net/mac/Ryver-#{version}.dmg"
  name 'Ryver'
  homepage 'https://www.ryver.com/'

  app 'Ryver.app'
end
