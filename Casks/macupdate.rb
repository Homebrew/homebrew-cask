cask 'macupdate' do
  version '6.2.1'
  sha256 '6939d71a72f9199f14296ae92e13d54fc64f9c87055c2bfc9496fcc722225aa2'

  url 'https://www.macupdate.com/download/8544/MacUpdate-Desktop'
  appcast 'https://www.macupdate.com/desktop/updates.xml',
          checkpoint: '4a5d6fea7b479baa4b9277e4bac1c29e358ac392b3f7a8e19de7bc44b4172f4b'
  name 'MacUpdate Desktop'
  homepage 'https://www.macupdate.com/desktop'

  app 'MacUpdate Desktop.app'

  zap trash: [
               "~/Library/Application Support/MacUpdate/MacUpdate Desktop #{version.major}",
               "~/Library/Caches/com.macupdate.desktop#{version.major}",
               "~/Library/Cookies/com.macupdate.desktop#{version.major}.binarycookies",
               '~/Library/Logs/MacUpdate Desktop',
               "~/Library/Preferences/com.macupdate.desktop#{version.major}.plist",
               "~/Library/Saved Application State/com.macupdate.desktop#{version.major}.savedState",
             ]
end
