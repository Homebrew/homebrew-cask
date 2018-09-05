cask 'hazel' do
  version '4.2.9'
  sha256 '321f6a909a9b7a1969bf6237b2e42cc5fb4df2bef131cc46f5582e933166f734'

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
