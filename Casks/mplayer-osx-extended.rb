cask 'mplayer-osx-extended' do
  version 'rev16-test3'
  sha256 'eda6f5e7d508d54755c3b600ac4083d797314d81f78f24a8fd5decc25c60ac3d'

  # github.com/sttz/MPlayer-OSX-Extended was verified as official when first introduced to the cask
  url "https://github.com/sttz/MPlayer-OSX-Extended/releases/download/#{version}/MPlayer-OSX-Extended_#{version}.zip"
  appcast 'https://github.com/sttz/MPlayer-OSX-Extended/releases.atom',
          checkpoint: '5df7951d912b70a47dbb4533726f85679fe372895b61d1e11da267334193294d'
  name 'MPlayer OSX Extended'
  homepage 'https://mplayerosx.ch/'

  app 'MPlayer OSX Extended.app'

  zap trash: '~/.mplayer'
end
