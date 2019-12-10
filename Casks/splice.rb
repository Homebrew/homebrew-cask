cask 'splice' do
  version '3.5.9'
  sha256 'f933a95f1be78ba6c46ab138808da7c40700e097488de84523693d9d79ff04e7'

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
