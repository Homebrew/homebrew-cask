cask 'onyx' do
  if MacOS.version == :el_capitan
    version '3.1.9'
    sha256 '7f8df2c9e97eb465aba88b000fa2f58958421efeba1239303ff0071e9b7b0536'
  else
    version '3.2.9'
    sha256 '0d712ddedcac1891950990716ba1b3b3d6d0abb86fd5c837ff0bf272dbed52bc'
  end

  url "https://www.titanium-software.fr/download/#{MacOS.version.to_s.delete('.')}/OnyX.dmg"
  appcast 'http://www.titanium-software.fr/en/release_onyx.html',
          checkpoint: '4fdfa4577656faee686f58227e6cb6ecd93300cd0f8bd7addfdf207348fc5c42'
  name 'OnyX'
  homepage 'https://www.titanium-software.fr/en/onyx.html'

  depends_on macos: '>= :el_capitan'

  app 'OnyX.app'

  zap delete: [
                '~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/com.titanium.OnyX.help',
                '~/Library/Logs/OnyX.log',
                '~/Library/Preferences/OnyX.plist',
                '~/Library/Preferences/com.titanium.OnyX.plist',
                '~/Library/Saved Application State/com.titanium.OnyX.savedState',
              ]
end
