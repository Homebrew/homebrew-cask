cask 'adware-removal-tool' do
  version :latest
  sha256 :no_check

  url 'https://download.bitdefender.com/mac/tools/Adware%20Removal%20Tool.zip'
  name 'Bitdefender Adware Removal Tool for Mac'
  homepage 'https://www.bitdefender.com/'

  app 'Adware Removal Tool.app'

  zap trash: [
               '~/Library/Preferences/com.bitdefender.com.bitdefender.Adware-Removal-Tool.plist',
               '~/Library/Saved Application State/com.com.bitdefender.Adware-Removal-Tool.savedState',
             ]
end
