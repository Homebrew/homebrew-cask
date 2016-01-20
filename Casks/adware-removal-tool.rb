cask 'adware-removal-tool' do
  version :latest
  sha256 :no_check

  url 'http://download.bitdefender.com/mac/tools/Adware%20Removal%20Tool.zip'
  name 'Bitdefender Adware Removal Tool for Mac'
  homepage 'http://www.bitdefender.com'
  license :gratis

  app 'Adware Removal Tool.app'

  zap trash: [
               '~/Library/Preferences/com.bitdefender.com.bitdefender.Adware-Removal-Tool.plist',
               '~/Library/Saved Application State/com.com.bitdefender.Adware-Removal-Tool.savedState',
             ]
end
