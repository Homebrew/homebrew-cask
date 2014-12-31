cask :v1 => 'mplayer-osx-extended' do
  version 'rev15'
  sha256 '7979f2369730d389ceb4ec3082c65ffa3ec70f812f0699a2ef8acbae958a5c93'

  url "https://github.com/sttz/MPlayer-OSX-Extended/releases/download/#{version}/MPlayer-OSX-Extended_#{version}.zip"
  appcast 'http://mplayerosx.ch/updates.xml',
          :sha256 => '2c74b034df3d97edc5748201d35cb5dec7c3715212d6cf4bd7f8bdd1a087e3cc'
  homepage 'http://www.mplayerosx.ch/'
  license :gpl

  app 'MPlayer OSX Extended.app'

  zap :delete => '~/.mplayer'
end
