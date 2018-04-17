cask 'qif-master' do
  version '11.8'
  sha256 'a0f85eca6a741b7fdda606845ca438129dfe9db8f2b2c6ff77c9e64aec2b554a'

  url "https://thewoodwards.us/sw/QIFMaster/QIFMaster#{version}.zip"
  name 'QIF Master'
  homepage 'https://thewoodwards.us/sw/QIFMaster/'

  app "QIFMaster#{version}/QIF Master.app"

  zap trash: [
               '~/Library/Preferences/us.theWoodwards.jplw.QIFMaster.prefs',
               '~/Library/Preferences/us.theWoodwards.jplw.QIFMaster.plist',
             ]
end
