cask 'hazel' do
  version '4.1.4'
  sha256 'b6af4c3e7a2cbf8f930b933104114699e6bd53912d95a494b0adbf80c2ba34cb'

  # s3.amazonaws.com/Noodlesoft was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/Noodlesoft/Hazel-#{version}.dmg"
  appcast 'https://www.noodlesoft.com/Products/Hazel/generate-appcast.php',
          checkpoint: 'b155799c1bd985e39fe28d2b060fbe5ee52e3e9b0b44f40afd67ed3f5b3939ad'
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
