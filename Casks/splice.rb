cask 'splice' do
  version '3.4.2'
  sha256 'd55d7a063238eb4e43a084699ded0e2720934e39fafcbc43f74abd6c5df80745'

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
