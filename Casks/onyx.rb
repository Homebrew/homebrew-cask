cask 'onyx' do
  if MacOS.version == :el_capitan
    version '3.1.9'
    sha256 '7f8df2c9e97eb465aba88b000fa2f58958421efeba1239303ff0071e9b7b0536'
  else
    version '3.2.8'
    sha256 '01866ed21939e353618ff4427e2396e0fcceeb543f0ae42731644bf4ec410a30'
  end

  url "https://www.titanium-software.fr/download/#{MacOS.version.to_s.delete('.')}/OnyX.dmg"
  appcast 'http://www.titanium-software.fr/en/release_onyx.html',
          checkpoint: 'fd304027ac7c134b6b757a8b7942c03a11bb3e2ff8cd6e0b04b71c7d7734c659'
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
