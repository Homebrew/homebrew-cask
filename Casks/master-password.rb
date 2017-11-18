cask 'master-password' do
  version :latest
  sha256 :no_check

  url 'https://ssl.masterpasswordapp.com/masterpassword-mac.zip'
  name 'Master Password'
  homepage 'http://masterpasswordapp.com/'

  app 'Master Password.app'

  uninstall quit:      'com.lyndir.lhunath.MasterPassword.Mac',
            launchctl: 'com.lyndir.lhunath.MasterPassword.Mac.LoginHelper'

  zap trash: [
               '~/Library/Application Scripts/com.lyndir.lhunath.MasterPassword.Mac',
               '~/Library/Containers/com.lyndir.lhunath.MasterPassword.Mac',
               '~/Library/Containers/com.lyndir.lhunath.MasterPassword.Mac.LoginHelper',
               '~/Library/Group Containers/HL3Q45LX9N.com.lyndir.lhunath.MasterPassword.Mac',
             ]
end
