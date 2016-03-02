cask 'ryver' do
  version '1.1.3'
  sha256 '50a67e30aa8069afc869e2e7545e45d255b447ba67f8bc06e32a1185a02a7396'

  url "https://d3vkb1nw20iqfq.cloudfront.net/mac/Ryver-#{version}.dmg"
  name 'Ryver'
  homepage 'http://www.ryver.com'
  license :unknown

  app 'Ryver.app'
end
