cask 'splice' do
  version '3.4.8'
  sha256 '192181c6b280069c1e5902d69b3cf5490796707a87093da6b011afcac9208a59'

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
