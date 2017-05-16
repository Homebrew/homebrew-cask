cask 'hazel' do
  version '4.1'
  sha256 '36cea393a4d6854ec77092c6c02a0b54deef31e06ad90f8d3f3873e87ff6cbc0'

  # s3.amazonaws.com/Noodlesoft was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/Noodlesoft/Hazel-#{version}.dmg"
  appcast 'https://www.noodlesoft.com/Products/Hazel/generate-appcast.php',
          checkpoint: '2c50c4d50681d885ff1c5dd3cfeea517cafd9c40d8feef377c97012217886aab'
  name 'Hazel'
  homepage 'https://www.noodlesoft.com/'

  prefpane 'Install Hazel.app/Contents/Resources/Hazel.prefPane'

  uninstall quit: 'com.noodlesoft.HazelHelper'

  zap delete: [
                '~/Library/Application Support/Hazel',
                '~/Library/Preferences/com.noodlesoft.Hazel.plist',
                '~/Library/Preferences/com.noodlesoft.HazelHelper.plist',
              ]
end
