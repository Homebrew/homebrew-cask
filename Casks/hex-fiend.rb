cask 'hex-fiend' do
  version '2.3.0'
  sha256 '0e0a683971c872ee734af2a3440f1f2abb8d442609077bd5c3e212ab3b5439f7'

  # github.com/ridiculousfish/HexFiend was verified as official when first introduced to the cask
  url "https://github.com/ridiculousfish/HexFiend/releases/download/v#{version}/Hex.Fiend.app.zip"
  appcast 'https://github.com/ridiculousfish/HexFiend/releases.atom',
          checkpoint: '2d09b3a576fc111777c4d5988be2d595651e163ee6f1b5d7dd12d608078d0a8c'
  name 'Hex Fiend'
  homepage 'http://ridiculousfish.com/hexfiend/'

  app 'Hex Fiend.app'

  postflight do
    set_permissions "#{appdir}/Hex Fiend.app/Contents/Frameworks/Sparkle.framework", 'a+rx'
  end

  zap delete: [
                '~/Library/Preferences/com.ridiculousfish.HexFiend.LSSharedFileList.plist',
                '~/Library/Preferences/com.ridiculousfish.HexFiend.plist',
              ]
end
