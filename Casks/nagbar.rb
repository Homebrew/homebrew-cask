cask 'nagbar' do
  version '1.3.4'
  sha256 '04db2dfd7d1df586788bd24cd77c8b74c1484506f184694d2b8f4a28633029e1'

  # github.com/volendavidov/NagBar was verified as official when first introduced to the cask
  url "https://github.com/volendavidov/NagBar/releases/download/#{version}/NagBar.zip"
  appcast 'https://github.com/volendavidov/NagBar/releases.atom',
          checkpoint: 'dbf539729766eb917880f571b01be5d859d3d056708f0d7e9350e926471425dd'
  name 'NagBar'
  homepage 'https://sites.google.com/site/nagbarapp/home'

  app 'NagBar.app'

  zap trash: [
               '~/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.volendavidov.nagbar.sfl*',
               '~/Caches/com.volendavidov.NagBar',
               '~/Preferences/com.volendavidov.NagBar.plist',
             ]
end
