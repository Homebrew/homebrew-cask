cask 'hazel' do
  version '4.0.8'
  sha256 '33ecd5c2d23574426e109662d65e794991ad79d10f80fa285631460b2bca3006'

  # s3.amazonaws.com/Noodlesoft was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/Noodlesoft/Hazel-#{version}.dmg"
  appcast 'https://www.noodlesoft.com/Products/Hazel/generate-appcast.php',
          checkpoint: '3bf9cd2ba6f062fc43fa02fc9a155b9bc653c4e3373f6a61e2acc58d5fbd6624'
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
