cask 'hazel' do
  version '4.0.6'
  sha256 '71427d730d07fcd28fc58d358e126de14b40b1d56e573796a7c6df973004155b'

  # s3.amazonaws.com/Noodlesoft was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/Noodlesoft/Hazel-#{version}.dmg"
  appcast 'https://www.noodlesoft.com/Products/Hazel/generate-appcast.php',
          checkpoint: 'fd5271bb5fc3644bc2048a62750a485e1c860d3926b3c5d6614815a5bd3917bf'
  name 'Hazel'
  homepage 'https://www.noodlesoft.com/hazel.php'

  prefpane 'Install Hazel.app/Contents/Resources/Hazel.prefPane'

  zap delete: [
                '~/Library/Application Support/Hazel',
                '~/Library/Preferences/com.noodlesoft.Hazel.plist',
              ]
end
