cask 'splice' do
  version '3.5.7'
  sha256 'b84b9b81ed0bad1f254feec70b75424d5f11f4da66022245ac5d5314c250eb49'

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
