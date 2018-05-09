cask 'eudic' do
  version '2018-04-09'
  sha256 '96aabb338ab6d2dfb2ec8711190267215ea75de10ec1d3c256190fe5418263a8'

  # static.frdic.com was verified as official when first introduced to the cask
  url 'https://static.frdic.com/pkg/eudicmac.dmg?v=#{version}'
  name 'EuDic'
  name '欧路词典'
  homepage 'https://www.eudic.net/v4/en/app/eudic'

  app 'EuDic.app'
end
