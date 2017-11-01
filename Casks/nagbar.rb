cask 'nagbar' do
  version '1.3.3'
  sha256 '51e5e4ac49e90c3a5609e29c4fb2a8b96a77d62e9e8d029156d0eb609a3bf041'

  # github.com/volendavidov/NagBar was verified as official when first introduced to the cask
  url "https://github.com/volendavidov/NagBar/releases/download/#{version}/NagBar.zip"
  appcast 'https://github.com/volendavidov/NagBar/releases.atom',
          checkpoint: 'd29cd11da75dd47389453a2f0871faba660b86fb2a549d3ee081d06a72bb264a'
  name 'NagBar'
  homepage 'https://sites.google.com/site/nagbarapp/home'

  app 'NagBar.app'

  zap delete: [
                '~/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.volendavidov.nagbar.sfl',
                '~/Caches/com.volendavidov.NagBar',
              ],
      trash:  '~/Preferences/com.volendavidov.NagBar.plist'
end
