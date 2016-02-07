cask 'hex-fiend' do
  version '2.3.0'
  sha256 '0e0a683971c872ee734af2a3440f1f2abb8d442609077bd5c3e212ab3b5439f7'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/ridiculousfish/HexFiend/releases/download/v#{version}/Hex.Fiend.app.zip"
  appcast 'https://github.com/ridiculousfish/HexFiend/releases.atom',
          checkpoint: '2d09b3a576fc111777c4d5988be2d595651e163ee6f1b5d7dd12d608078d0a8c'
  name 'Hex Fiend'
  homepage 'http://ridiculousfish.com/hexfiend/'
  license :bsd

  app 'Hex Fiend.app'

  postflight do
    set_permissions "#{staged_path}/Hex Fiend.app/Contents/Frameworks/Sparkle.framework", 'og=u'
  end

  zap delete: [
                '~/Library/Preferences/com.ridiculousfish.HexFiend.LSSharedFileList.plist',
                '~/Library/Preferences/com.ridiculousfish.HexFiend.plist',
              ]
end
