cask 'mplayer-osx-extended' do
  version 'rev15'
  sha256 '7979f2369730d389ceb4ec3082c65ffa3ec70f812f0699a2ef8acbae958a5c93'

  # github.com/sttz/MPlayer-OSX-Extended was verified as official when first introduced to the cask
  url "https://github.com/sttz/MPlayer-OSX-Extended/releases/download/#{version}/MPlayer-OSX-Extended_#{version}.zip"
  appcast 'https://github.com/sttz/MPlayer-OSX-Extended/releases.atom',
          checkpoint: '0a27d2b111abfe68462e7ef0cb71e9efe1ea34921b8a7a2dc208713208242dba'
  name 'MPlayer OSX Extended'
  homepage 'http://mplayerosx.ch/'

  app 'MPlayer OSX Extended.app'

  zap delete: '~/.mplayer'
end
