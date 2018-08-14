cask 'hazel' do
  version '4.2.8'
  sha256 'cf83c39ad8125069f23c095c8d663a16e172b8fb3c0c82b81b28097e025167bc'

  # s3.amazonaws.com/Noodlesoft was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/Noodlesoft/Hazel-#{version}.dmg"
  appcast 'https://www.noodlesoft.com/Products/Hazel/generate-appcast.php'
  name 'Hazel'
  homepage 'https://www.noodlesoft.com/'

  auto_updates true

  prefpane 'Install Hazel.app/Contents/Resources/Hazel.prefPane'

  uninstall quit: 'com.noodlesoft.HazelHelper'

  zap trash: [
               '~/Library/Application Support/Hazel',
               '~/Library/Preferences/com.noodlesoft.Hazel.plist',
               '~/Library/Preferences/com.noodlesoft.HazelHelper.plist',
             ]
end
