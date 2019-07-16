cask 'splice' do
  version '3.5.4'
  sha256 '9fb00aab3fe59db68eeef46356a19253fd387d40000430f7e7f42cd9e03470b5'

  # splicedesktop.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://splicedesktop.s3.amazonaws.com/darwin/stable/Splice.app.zip'
  appcast 'https://api.splice.com/v2/desktop/darwin/stable/latest?v=0.0.0'
  name 'Splice'
  homepage 'https://splice.com/'

  app 'Splice.app'

  uninstall quit: 'com.splice.Splice'

  zap trash: [
               '~/Library/Application Support/*Splice*',
               '~/Library/Caches/com.splice*',
               '~/Library/Preferences/com.splice*',
             ]
end
