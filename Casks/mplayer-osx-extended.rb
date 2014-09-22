class MplayerOsxExtended < Cask
  version 'rev15'
  sha256 '7979f2369730d389ceb4ec3082c65ffa3ec70f812f0699a2ef8acbae958a5c93'

  url "https://github.com/sttz/MPlayer-OSX-Extended/releases/download/#{version}/MPlayer-OSX-Extended_#{version}.zip"
  appcast 'http://mplayerosx.ch/updates.xml'
  homepage 'http://www.mplayerosx.ch/'

  app 'MPlayer OSX Extended.app'
end
