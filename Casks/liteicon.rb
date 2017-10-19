cask 'liteicon' do
  version '3.8.1'
  sha256 '11c055b968eba4a8949e87f96ca894530f24e38527d14ac8c797ce0886ca9269'

  url "https://www.freemacsoft.net/downloads/LiteIcon_#{version}.zip"
  appcast 'https://freemacsoft.net/liteicon/updates.xml',
          checkpoint: '3690ac894e3d8e1be71eeda725ff5d4fa5794f9e73381be122f188cd8269939a'
  name 'LiteIcon'
  homepage 'https://freemacsoft.net/liteicon/'

  app 'LiteIcon.app'

  zap delete: '~/Library/Preferences/net.freemacsoft.LiteIcon.plist'
end
