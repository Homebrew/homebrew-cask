cask 'splice' do
  version '3.3.13'
  sha256 'fc74a3df4eb3f13aaebef60f2fc58c5067e4f2a93a808d2c8467e79d3c63a1c5'

  # splicedesktop.s3-us-west-1.amazonaws.com was verified as official when first introduced to the cask
  url 'https://splicedesktop.s3-us-west-1.amazonaws.com/darwin/stable/Splice.app.zip'
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
