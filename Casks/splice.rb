cask 'splice' do
  version '3.3.11'
  sha256 '5afceea5c107e46b4f72d747621f7f4477ce8894a77f56294ca7bbc19837cd53'

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
