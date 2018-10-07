cask 'splice' do
  version '3.3.4'
  sha256 '3888796be1a4d60ce4066778f3fa9e87c290f0c943662b8e3568f44a0205246f'

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
