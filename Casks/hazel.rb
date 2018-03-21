cask 'hazel' do
  version '4.2.4'
  sha256 '708f798a8815de0f212ee0f0581a5a181ae64d6324683ee1e4aeb8ae62bc84c5'

  # s3.amazonaws.com/Noodlesoft was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/Noodlesoft/Hazel-#{version}.dmg"
  appcast 'https://www.noodlesoft.com/Products/Hazel/generate-appcast.php',
          checkpoint: '90975522f609d033194e6e03f9f5129826417c1fbd00e1f4c193e96e37fecca6'
  name 'Hazel'
  homepage 'https://www.noodlesoft.com/'

  prefpane 'Install Hazel.app/Contents/Resources/Hazel.prefPane'

  uninstall quit: 'com.noodlesoft.HazelHelper'

  zap trash: [
               '~/Library/Application Support/Hazel',
               '~/Library/Preferences/com.noodlesoft.Hazel.plist',
               '~/Library/Preferences/com.noodlesoft.HazelHelper.plist',
             ]
end
