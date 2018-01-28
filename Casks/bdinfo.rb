cask 'bdinfo' do
  version :latest
  sha256 :no_check

  url 'https://www.videohelp.com/download/BDInfo%20OSX.dmg',
      referer: 'https://www.videohelp.com/software/BDInfo'
  name 'BDInfo'
  homepage 'https://www.videohelp.com/software/BDInfo'

  app 'BDInfo OSX.app'

  zap trash: [
               '~/Library/Preferences/com.yourcompany.BDInfo-OSX.plist',
               '~/Library/Saved Application State/com.yourcompany.BDInfo-OSX.savedState',
             ]
end
