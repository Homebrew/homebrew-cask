cask 'explorer' do
  version '1.104'
  sha256 'fcf3ec43ab2dff7f9e734192d3d327eebce80240007c4848b433f5d0f6ae8605'

  url "https://github.com/jfbouzereau/explorer/releases/download/#{version}/Explorer-darwin-x64.zip"
  appcast 'https://github.com/jfbouzereau/explorer/releases.atom',
          checkpoint: '72093729e37cd133de303b4f9748c20453d1188ba8763eaf70b9d3b5fe92319d'
  name 'Explorer'
  homepage 'https://github.com/jfbouzereau/explorer'

  app 'Explorer-darwin-x64.app'
end
