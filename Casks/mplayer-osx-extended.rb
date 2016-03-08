cask 'mplayer-osx-extended' do
  version 'rev15'
  sha256 '7979f2369730d389ceb4ec3082c65ffa3ec70f812f0699a2ef8acbae958a5c93'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/sttz/MPlayer-OSX-Extended/releases/download/#{version}/MPlayer-OSX-Extended_#{version}.zip"
  appcast 'https://github.com/sttz/MPlayer-OSX-Extended/releases.atom',
          checkpoint: '97a7842a97b15d35ed296f0917e0c6ebdf9f5c54f978e15bf419134bac7bf232'
  name 'MPlayer OSX Extended'
  homepage 'http://www.mplayerosx.ch/'
  license :gpl

  app 'MPlayer OSX Extended.app'

  zap delete: '~/.mplayer'
end
