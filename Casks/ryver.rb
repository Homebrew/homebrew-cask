cask 'ryver' do
  version '1.3.2'
  sha256 '949abb92a3df5034fd8c81e1fe78a9c7bd7be2ad699bef9d423ad3a39cd48d54'

  # d3vkb1nw20iqfq.cloudfront.net was verified as official when first introduced to the cask
  url "https://d3vkb1nw20iqfq.cloudfront.net/mac/Ryver-#{version}.dmg"
  name 'Ryver'
  homepage 'https://ryver.com/'

  app 'Ryver.app'
end
