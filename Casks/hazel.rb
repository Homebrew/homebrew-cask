cask 'hazel' do
  version '4.2'
  sha256 'fb7220270b710df3d27b32104a1d84cc3c57b5be5666ca949b571bdb96ae30a8'

  # s3.amazonaws.com/Noodlesoft was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/Noodlesoft/Hazel-#{version}.dmg"
  appcast 'https://www.noodlesoft.com/Products/Hazel/generate-appcast.php',
          checkpoint: 'fcd51f51f393afc55abe318b78d209362e15c3ef32289f8f4b2ee7486c3e8d09'
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
