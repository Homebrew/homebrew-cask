cask 'nagbar' do
  version '1.3.5'
  sha256 '28848bc054584923d25fe34b073ecbfcd615f345c720e23b3f753f16ec8b9acc'

  # github.com/volendavidov/NagBar was verified as official when first introduced to the cask
  url "https://github.com/volendavidov/NagBar/releases/download/#{version}/NagBar.zip"
  appcast 'https://github.com/volendavidov/NagBar/releases.atom'
  name 'NagBar'
  homepage 'https://sites.google.com/site/nagbarapp/home'

  app 'NagBar.app'

  zap trash: [
               '~/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.volendavidov.nagbar.sfl*',
               '~/Caches/com.volendavidov.NagBar',
               '~/Preferences/com.volendavidov.NagBar.plist',
             ]
end
