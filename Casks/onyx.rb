cask 'onyx' do
  if MacOS.version == :el_capitan
    version '3.1.9'
    sha256 '7f8df2c9e97eb465aba88b000fa2f58958421efeba1239303ff0071e9b7b0536'
  else
    version '3.3.0'
    sha256 'd8f521bd348044fc2d1696f43910bfb193a9641968013cd5bbaada55e46e4799'
  end

  url "https://www.titanium-software.fr/download/#{MacOS.version.to_s.delete('.')}/OnyX.dmg"
  appcast 'http://www.titanium-software.fr/en/release_onyx.html',
          checkpoint: '8264f1465f06db34e1c36e22f002d2200e7d50449be174ae614e7d5341a1dc90'
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
