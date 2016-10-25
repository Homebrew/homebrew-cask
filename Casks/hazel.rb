cask 'hazel' do
  version '4.0.7'
  sha256 'd9be69c1b8768f701881933ed1bcbfc7423feee3d944bd7136bc07aedf17bd69'

  # s3.amazonaws.com/Noodlesoft was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/Noodlesoft/Hazel-#{version}.dmg"
  appcast 'https://www.noodlesoft.com/Products/Hazel/generate-appcast.php',
          checkpoint: 'ca7bc9da3fd4cdd595beb78201379cd4297938332c2ffbf4aa5a738ab8e28f05'
  name 'Hazel'
  homepage 'https://www.noodlesoft.com/hazel.php'

  prefpane 'Install Hazel.app/Contents/Resources/Hazel.prefPane'

  uninstall quit: 'com.noodlesoft.HazelHelper'

  zap delete: [
                '~/Library/Application Support/Hazel',
                '~/Library/Preferences/com.noodlesoft.Hazel.plist',
                '~/Library/Preferences/com.noodlesoft.HazelHelper.plist',
              ]
end
