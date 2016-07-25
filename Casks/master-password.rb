cask 'master-password' do
  version :latest
  sha256 :no_check

  url 'https://ssl.masterpasswordapp.com/masterpassword-mac.zip'
  name 'Master Password'
  homepage 'http://masterpasswordapp.com'
  license :gpl

  app 'Master Password.app'

  uninstall quit:      'com.lyndir.lhunath.MasterPassword.Mac',
            launchctl: 'com.lyndir.lhunath.MasterPassword.Mac.LoginHelper'
end
