cask 'splice' do
  version '3.5.2'
  sha256 'a1f4ba1af5d033177ead405073de37db4c2fef744a625dec6e66bab6de51b046'

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
