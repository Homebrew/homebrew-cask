cask 'hazel' do
  version '4.0'
  sha256 'e89057913aa44022144d643c47a8391da5149f39fc6f975bdf616c5a5b970843'

  # s3.amazonaws.com/Noodlesoft was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/Noodlesoft/Hazel-#{version}.dmg"
  appcast 'http://update.noodlesoft.com/Products/Hazel/changelog.php',
          checkpoint: '98174c3caf499891f9222a0bf70e439009fae51713ab4ecefbf7aaba98ae4f64'
  name 'Hazel'
  homepage 'https://www.noodlesoft.com/hazel.php'
  license :freemium

  prefpane 'Install Hazel.app/Contents/Resources/Hazel.prefPane'

  zap delete: [
                '~/Library/Application Support/Hazel',
                '~/Library/Preferences/com.noodlesoft.Hazel.plist',
              ]
end
