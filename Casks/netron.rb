cask 'netron' do
  version '1.3.8'
  sha256 '2d2027188042bc09c3f5e2151c367af37dea88436e05fbe67dad0783d91264b7'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom',
          checkpoint: '314e6a51d7ba6d93ca8fcd3c85b9794de37de05447908ae0b17d3220e02e5001'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
