cask 'hazel' do
  version '4.2.7'
  sha256 '41d23a797a7e20744703d3164d2ee8b23ffaa9744ecf13b818af5f227d4c8d7d'

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
