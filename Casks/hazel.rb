cask 'hazel' do
  version '4.4.3'
  sha256 'af08f8b25abbe44a36a6be12826790cbd8ec659fa5ab2273f5877d9f8f067620'

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
